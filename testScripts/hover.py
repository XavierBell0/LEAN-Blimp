from sshkeyboard import listen_keyboard
import RPi.GPIO as GPIO
import time
import lcm
import numpy as np

from modata import motion_data

Motor3PWM = 23
Motor3Dir = 24
Motor4PWM = 22
Motor4Dir = 27

motors = [Motor3PWM, Motor3Dir, Motor4PWM, Motor4Dir]

GPIO.setmode(GPIO.BCM)

for motor in motors:
    GPIO.setup(motor, GPIO.OUT) #Initializes all pins as output
    #print(f'Set {motor} as output')
    GPIO.output(motor, GPIO.LOW) #Sets default direction of motors
    #(f'Set {motor} to low')

pwm3 = GPIO.PWM(motors[4], 1000) #SOFTWARE
pwm4 = GPIO.PWM(motors[6], 1000) #SOFTWARE

pwm3.start(0)
pwm4.start(0)

def PID(waypoint, pos, kp = .5, ki = .5, kd = .5, bias = 0, iteration_time = 0.05):
    if time_elasped < 0.1:
        err_prior = 0
        integral_prior = 0
    if err > .05:
        err = waypoint - pos
        integral = integral_prior + err * iteration_time
        deriv = (err-err_prior)/iteration_time
        output = KP*err + KI*integral + KD*deriv + bias
        err_prior = err
        integral_prior = integral
        sleep(iteration_time)
        return output
    return None

def control(direction, throttle):
    if direction == 'up':
        GPIO.output(Motor3Dir, GPIO.LOW)
        GPIO.output(Motor4Dir, GPIO.LOW)
        pwm3.ChangeDutyCycle(throttle)
        pwm4.ChangeDutyCycle(throttle)
    if direction == 'down':
        GPIO.output(Motor3Dir, GPIO.HIGH)
        pwm3.ChangeDutyCycle(100-throttle)
        GPIO.output(Motor4Dir, GPIO.HIGH)
        pwm4.ChangeDutyCycle(100-throttle)
    GPIO.output(Motor3Dir, GPIO.LOW)
    GPIO.output(Motor4Dir, GPIO.LOW)
    pwm3.ChangeDutyCycle(0)
    pwm4.ChangeDutyCycle(0)

while True:
    if PID(waypoint[2], pos[2]) > 0:
        control('up', PID(waypoint[2], pos[2]))
        sleep(.05)
    else:
        control('down', PID(waypoint[2], pos[2]))
        sleep(.05)