# Write your code here :-)
import RPi.GPIO as GPIO
from time import sleep

GPIO.setmode(GPIO.BCM)

Motor1PWM = 12
Motor1Dir = 5
Motor2PWM = 6
Motor2Dir = 21
Motor3PWM = 23
Motor3Dir = 24
Motor4PWM = 22
Motor4Dir = 27

motorpwm = [Motor1PWM, Motor2PWM, Motor3PWM, Motor4PWM]
motordir = [Motor1Dir, Motor2Dir, Motor3Dir, Motor4Dir]

GPIO.setmode(GPIO.BCM)

for motor in motorpwm + motordir:
    GPIO.setup(motor, GPIO.OUT) #Initializes all pins as output
    #print(f'Set {motor} as output')
    GPIO.output(motor, GPIO.LOW) #Sets default direction of motors
    #(f'Set {motor} to low')

pwm1 = 0
pwm2 = 0
pwm3 = 0
pwm4 = 0
pwm_names = [pwm1, pwm2, pwm3, pwm4]
pwm = []

for motor in range(len(motorpwm)):
    pwm_names[motor] = GPIO.PWM(motorpwm[motor], 1000) #SOFTWARE
    pwm.append(pwm_names[motor])
    pwm[motor].start(0)


print("Turning motor 1 on")
pwm1.ChangeDutyCycle(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor1Dir, GPIO.HIGH)
pwm1.ChangeDutyCycle(40)
sleep(3)
pwm1.ChangeDutyCycle(100)

print("Turning motor 2 on")
pwm2.ChangeDutyCycle(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor2Dir, GPIO.HIGH)
pwm2.ChangeDutyCycle(40)
sleep(3)
pwm2.ChangeDutyCycle(100)

print("Turning motor 3 on")
pwm3.ChangeDutyCycle(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor3Dir, GPIO.HIGH)
pwm3.ChangeDutyCycle(40)
sleep(3)
pwm3.ChangeDutyCycle(100)

print("Turning motor 4 on")
pwm4.ChangeDutyCycle(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor4Dir, GPIO.HIGH)
pwm4.ChangeDutyCycle(40)
sleep(3)
pwm4.ChangeDutyCycle(100)


GPIO.cleanup()