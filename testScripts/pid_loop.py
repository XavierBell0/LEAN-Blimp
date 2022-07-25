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

pwm1 = GPIO.PWM(motors[0], 100) #SOFTWARE
pwm2 = GPIO.PWM(motors[2], 100) #SOFTWARE
pwm3 = GPIO.PWM(motors[4], 100) #SOFTWARE
pwm4 = GPIO.PWM(motors[6], 100) #SOFTWARE

pwm1.start(0)
pwm2.start(0)
pwm3.start(0)
pwm4.start(0)

def PID():
    iteration_time = .01
    err_prior = 0
    integral_prior = 0
    KP = 1
    KI = 1
    KD = 1
    bias = 0
    while True:
        err = desired_value - actual_value
        integral = integral_prior + error * iteration_time
        deriv = (err-err_prior)/iteration_time
        output = KP*err + KI*integral + KD*derivative + bias
        err_prior = err
        integral_prior = integral
        sleep(iteration_time)