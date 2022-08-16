from sshkeyboard import listen_keyboard
import RPi.GPIO as GPIO
import time
import lcm
import numpy as np

from modata import motion_data

Motor1PWM = 12
Motor1Dir = 5
Motor2PWM = 6
Motor2Dir = 21


motors = [Motor1PWM, Motor1Dir, Motor2PWM, Motor2Dir]

GPIO.setmode(GPIO.BCM)

for motor in motors:
    GPIO.setup(motor, GPIO.OUT) #Initializes all pins as output
    #print(f'Set {motor} as output')
    GPIO.output(motor, GPIO.LOW) #Sets default direction of motors
    #(f'Set {motor} to low')

pwm1 = GPIO.PWM(motors[0], 1000) #SOFTWARE
pwm2 = GPIO.PWM(motors[2], 1000) #SOFTWARE

pwm1.start(0)
pwm2.start(0)


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
    if direction == 'forward':
        GPIO.output(Motor1Dir, GPIO.LOW)
        GPIO.output(Motor2Dir, GPIO.LOW)
        pwm1.ChangeDutyCycle(throttle)
        pwm2.ChangeDutyCycle(throttle)
    if direction == 'back':
        GPIO.output(Motor1Dir, GPIO.HIGH)
        GPIO.output(Motor2Dir, GPIO.HIGH)
        pwm1.ChangeDutyCycle(100-throttle)
        pwm2.ChangeDutyCycle(100-throttle)
    if direction == 'right':
        GPIO.output(Motor1Dir, GPIO.LOW)
        GPIO.output(Motor2Dir, GPIO.HIGH)
        pwm1.ChangeDutyCycle(throttle)
        pwm2.ChangeDutyCycle(100-throttle)
    if direction == 'left':
        GPIO.output(Motor1Dir, GPIO.HIGH)
        GPIO.output(Motor2Dir, GPIO.LOW)
        pwm1.ChangeDutyCycle(100-throttle)
        pwm2.ChangeDutyCycle(throttle)
    GPIO.output(Motor1Dir, GPIO.LOW)
    GPIO.output(Motor2Dir, GPIO.LOW)
    pwm1.ChangeDutyCycle(0)
    pwm2.ChangeDutyCycle(0)


def navigation(pos, waypoint):
    '''Assumes pos and waypoint are both lists of [x,y,z,bearing] coords'''
    bearing = np.arctan2((waypoint[0]-pos[0]), (waypoint[1]-pos[1]))
    distance = (abs((waypoint[0]-pos[0]))^2+abs((waypoint[1]-pos[1])))^.5
    return (bearing, distance, pos)

def turn_to(pos, waypoint):
    nav = navigation(pos, waypoint)
    if abs(nav[0] - pos[3]) > 5*(3.14/180): #5 degrees
        if PID(nav[0], pos[3]) > 0:
            control('right', PID(nav[0], pos[3]))
            sleep(.05)
        else:
            control('left', PID(nav[0], pos[3]))
            sleep(.05)
    else:
        return None

def go_to(pos, waypoint):
    nav = navigation(pos, waypoint)
    while nav[1] > .05:
        if PID(0, distance) > 0:
            control('forward', throttle)
        else:
            control('back', throttle)

while True:
    if turn_to(pos,waypoint) is not None:
        turn_to(pos_waypoint)
    else:
        go_to(pos, waypoint)
