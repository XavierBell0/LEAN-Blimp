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

motors = [Motor1PWM, Motor1Dir, Motor2PWM, Motor2Dir, Motor3PWM, Motor3Dir, Motor4PWM, Motor4Dir]

GPIO.setmode(GPIO.BCM)

for motor in motors:
    GPIO.setup(motor, GPIO.OUT) #Initializes all pins as output
    print(f'Set {motor} as output')
    GPIO.output(motor, GPIO.LOW) #Sets default direction of motors
    print(f'Set {motor} to low')


pwm1 = GPIO.PWM(motors[0], 100)
pwm2 = GPIO.PWM(motors[2], 100)
pwm3 = GPIO.PWM(motors[4], 100)
pwm4 = GPIO.PWM(motors[6], 100)
print('set pwms')

print("Turning motor 1 on")
pwm1.start(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor1Dir, GPIO.HIGH)
pwm1.ChangeDutyCycle(100)
sleep(3)

print("Turning motor 2 on")
pwm2.start(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor2Dir, GPIO.HIGH)
pwm2.ChangeDutyCycle(100)
sleep(3)

print("Turning motor 3 on")
pwm3.start(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor3Dir, GPIO.HIGH)
pwm3.ChangeDutyCycle(100)
sleep(3)

print("Turning motor 4 on")
pwm4.start(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor4Dir, GPIO.HIGH)
pwm4.ChangeDutyCycle(100)
sleep(3)

GPIO.cleanup()