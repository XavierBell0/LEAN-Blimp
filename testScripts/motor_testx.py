# Write your code here :-)
import RPi.GPIO as GPIO
from time import sleep

GPIO.setmode(GPIO.BCM)

Motor1PWM = 12
Motor1Dir = 5
Motor2PWM = 20
Motor2Dir = 21
Motor3PWM = 22
Motor3Dir = 27
Motor4PWM = 23
Motor4Dir = 24

motors = [Motor1PWM, Motor1Dir, Motor2PWM, Motor2Dir, Motor3PWM, Motor3Dir, Motor4PWM, Motor4Dir]

GPIO.setmode(GPIO.BCM)

for motor in range(len(motors)):
    GPIO.setup(motors[motor], GPIO.OUT) #Initializes all pins as output
    print(f'set {motors[motor]} as output'
    if motor%2 == 1:
        GPIO.output(motors[motor], GPIO.LOW) #Sets default direction of motors
        print(f'Set {motors[motor]} to low'


pwm1 = GPIO.PWM(motors[0], 100) #HARDWARE
pwm2 = GPIO.PWM(motors[2], 100) #HARDWARE
pwm3 = GPIO.PWM(motors[4], 100) #SOFTWARE
pwm4 = GPIO.PWM(motors[6], 100) #SOFTWARE
print('set pwms')

print("Turning motor on")
pwm1.start(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor1Dir, GPIO.HIGH)
sleep(3)
pwm1.ChangeDutyCycle(0)

print("Turning motor 2 on")
pwm2.start(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor2Dir, GPIO.HIGH)
sleep(3)
pwm2.ChangeDutyCycle(0)

print("Turning motor 3 on")
pwm3.start(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor3Dir, GPIO.HIGH)
sleep(3)
pwm3.ChangeDutyCycle(0)

print("Turning motor 4 on")
pwm4.start(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor4Dir, GPIO.HIGH)
sleep(3)
pwm4.ChangeDutyCycle(0)

GPIO.cleanup()