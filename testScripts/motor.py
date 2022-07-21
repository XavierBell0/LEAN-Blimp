import keyboard
import RPi.GPIO as GPIO
import time
import lcm

from modata import motion_data

Motor1PWM = 12
Motor1Dir = 5
Motor2PWM = 13
Motor2Dir = 6
Motor3PWM = 24
Motor3Dir = 27
Motor4PWM = 23
Motor4Dir = 22

motors = [Motor1PWM, Motor1Dir, Motor2PWM, Motor2Dir, Motor3PWM, Motor3Dir, Motor4PWM, Motor4Dir]

GPIO.setmode(GPIO.BCM)

for motor in range(len(motors)):
    GPIO.setup(motors[motor], GPIO.OUT) #Initializes all pins as output
    print(f'set {motors[motor]} as output')
    if motor%2 == 1:
        GPIO.output(motors[motor], GPIO.LOW) #Sets default direction of motors
        print(f'Set {motors[motor]} to low')


pwm1 = GPIO.PWM(motors[0], 100) #HARDWARE
pwm2 = GPIO.PWM(motors[2], 100) #HARDWARE
pwm3 = GPIO.PWM(motors[4], 100) #SOFTWARE
pwm4 = GPIO.PWM(motors[6], 100) #SOFTWARE

def my_handler(channel, data):
    msg = motion_data.decode(data)
    throttle = 50 #Duty cycle!!
    if msg.linear_speed > 0.5:
        pwm1.start(throttle)
        pwm2.start(throttle)
    else:
        pwm1.stop()
        pwm2.stop()
    if msg.angular_speed > 0.5:
        pwm1.start(throttle)
        pwm2.start(-throttle)
    elif msg.angular_speed < -.5:
        pwm1.start(-throttle)
        pwm2.start(throttle)

lc = lcm.LCM()
subscription = lc.subscribe("MOTION", my_handler)

while True:
    lc.handle()