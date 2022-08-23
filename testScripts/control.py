from sshkeyboard import listen_keyboard
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

for motor in motors:
    GPIO.setup(motor, GPIO.OUT) #Initializes all pins as output
    print(f'Set {motor} as output')
    GPIO.output(motor, GPIO.LOW) #Sets default direction of motors
    print(f'Set {motor} to low')

pwm1 = GPIO.PWM(motors[0], 1000) #SOFTWARE
pwm2 = GPIO.PWM(motors[2], 1000) #SOFTWARE
pwm3 = GPIO.PWM(motors[4], 1000) #SOFTWARE
pwm4 = GPIO.PWM(motors[6], 1000) #SOFTWARE

pwm1.start(0)
pwm2.start(0)
pwm3.start(0)
pwm4.start(0)

def my_handler(channel, data):
    msg = motion_data.decode(data)
    print(f'msg.linear_speed = {msg.linear_speed}')
    print(f'msg.angular_speed = {msg.angular_speed}')
    print(f'msg.vertical_speed = {msg.vertical_speed}')
    throttle = 15 #Duty cycle!!


    if msg.linear_speed > 0.5:
        GPIO.output(Motor1Dir, GPIO.LOW)
        GPIO.output(Motor2Dir, GPIO.LOW)
        pwm1.ChangeDutyCycle(throttle)
        pwm2.ChangeDutyCycle(throttle)
        print('forward')
    if msg.linear_speed < -0.5:
        GPIO.output(Motor1Dir, GPIO.HIGH)
        GPIO.output(Motor2Dir, GPIO.HIGH)
        pwm1.ChangeDutyCycle(100-throttle)
        pwm2.ChangeDutyCycle(100-throttle)
        print('back')
    if msg.angular_speed > 0.5:
        GPIO.output(Motor1Dir, GPIO.LOW)
        GPIO.output(Motor2Dir, GPIO.HIGH)
        pwm1.ChangeDutyCycle(throttle)
        pwm2.ChangeDutyCycle(100-throttle)
        print('right')
    if msg.angular_speed < -.5:
        GPIO.output(Motor1Dir, GPIO.HIGH)
        GPIO.output(Motor2Dir, GPIO.LOW)
        pwm1.ChangeDutyCycle(100-throttle)
        pwm2.ChangeDutyCycle(throttle)
        print('left')
    if msg.vertical_speed > 0.5:
        GPIO.output(Motor3Dir, GPIO.LOW)
        GPIO.output(Motor4Dir, GPIO.LOW)
        pwm3.ChangeDutyCycle(throttle)
        pwm4.ChangeDutyCycle(throttle)
        print('up')
    if msg.vertical_speed < -0.5:
        GPIO.output(Motor3Dir, GPIO.HIGH)
        GPIO.output(Motor4Dir, GPIO.HIGH)
        pwm3.ChangeDutyCycle(100-throttle)
        pwm4.ChangeDutyCycle(100-throttle)
        print('down')
    else:
        GPIO.output(Motor1Dir, GPIO.LOW)
        GPIO.output(Motor2Dir, GPIO.LOW)
        GPIO.output(Motor3Dir, GPIO.LOW)
        GPIO.output(Motor4Dir, GPIO.LOW)
        pwm1.ChangeDutyCycle(0)
        pwm2.ChangeDutyCycle(0)
        pwm3.ChangeDutyCycle(0)
        pwm4.ChangeDutyCycle(0)

lc = lcm.LCM()
subscription = lc.subscribe("MOTION", my_handler)

try:
    while True:
        lc.handle()

except KeyboardInterrupt:
    pwm1.stop(0)
    pwm2.stop(0)
    pwm3.stop(0)
    pwm4.stop(0)

    GPIO.cleanup()