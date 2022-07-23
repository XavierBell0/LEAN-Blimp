import sshkeyboard import listen_keyboard
import RPi.GPIO as GPIO
import time
import lcm

from modata import motion_data

Motor1PWM = 12
Motor1Dir = 5
Motor2PWM = 6
Motor2Dir = 21
Motor3PWM = 23
Motor3Dir = 24
Motor4PWM = 22
Motor4Dir = 27

motors = [Motor1PWM, Motor1Dir, Motor2PWM, Motor2Dir, Motor3PWM, Motor3Dir, Motor4PWM, Motor4Dir]

GPIO.setmode(GPIO.BCM)

for motor in range(len(motors)):
    GPIO.setup(motors[motor], GPIO.OUT) #Initializes all pins as output
    print(f'set {motors[motor]} as output')
    GPIO.output(motors[motor], GPIO.LOW) #Sets default direction of motors
    print(f'Set {motors[motor]} to low')

pwm1 = GPIO.PWM(motors[0], 100) #HARDWARE
pwm2 = GPIO.PWM(motors[2], 100) #HARDWARE
pwm3 = GPIO.PWM(motors[4], 100) #SOFTWARE
pwm4 = GPIO.PWM(motors[6], 100) #SOFTWARE

pwm1.start(0)
pwm2.start(0)
pwm3.start(0)
pwm4.start(0)

def my_handler(channel, data):
    msg = motion_data.decode(data)
    throttle = 50 #Duty cycle!!
    if msg.linear_speed > 0.5:
        GPIO.output(Motor1Dir, GPIO.LOW)
        GPIO.output(Motor1Dir, GPIO.LOW)
        pwm1.start(throttle)
        pwm2.start(throttle)
    if msg.linear_speed < -0.5:
        GPIO.output(Motor1Dir, GPIO.HIGH)
        GPIO.output(Motor2Dir, GPIO.HIGH)
        pwm1.start(100-throttle)
        pwm2.start(100-throttle)
    if msg.angular_speed > 0.5:
        GPIO.output(Motor1Dir, GPIO.LOW)
        GPIO.output(Motor2Dir, GPIO.HIGH)
        pwm1.start(throttle)
        pwm2.start(100-throttle)
    if msg.angular_speed < -.5:
        GPIO.output(Motor1Dir, GPIO.HIGH)
        GPIO.output(Motor2Dir, GPIO.LOW)
        pwm1.start(100-throttle)
        pwm2.start(throttle)
    if msg.vertical_speed > 0.5:
        GPIO.output(Motor1Dir, GPIO.LOW)
        GPIO.output(Motor1Dir, GPIO.LOW)
        pwm3.start(throttle)
        pwm4.start(throttle)
    if msg.vertical_speed < -0.5:
        GPIO.output(Motor1Dir, GPIO.HIGH)
        GPIO.output(Motor2Dir, GPIO.HIGH)
        pwm3.start(100-throttle)
        pwm4.start(100-throttle)
    else:
        pwm1.ChangeDutyCycle(0)
        pwm2.ChangeDutyCycle(0)
        pwm3.ChangeDutyCycle(0)
        pwm4.ChangeDutyCycle(0)

lc = lcm.LCM()
subscription = lc.subscribe("MOTION", my_handler)

while True:
    lc.handle()

pwm1.stop(0)
pwm2.stop(0)
pwm3.stop(0)
pwm4.stop(0)

GPIO.cleanup()