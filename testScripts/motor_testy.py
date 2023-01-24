# Write your code here :-)
import RPi.GPIO as GPIO
from time import sleep

GPIO.setmode(GPIO.BCM)

Motor1PWM = 25
Motor1Dir = 8
Motor2PWM = 9
Motor2Dir = 11
Motor3PWM = 23
Motor3Dir = 24
Motor4PWM = 27
Motor4Dir = 22

duty = 8

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

pwm1.start(0)
pwm2.start(0)
pwm3.start(0)
pwm4.start(0)

sleep(3)

print("Turning motor 1 on")
pwm1.ChangeDutyCycle(duty)
sleep(5)

print("Turning motor 2 on")
pwm2.ChangeDutyCycle(duty)
sleep(5)

print("Turning motor 3 on")
pwm3.ChangeDutyCycle(duty)
sleep(5)

print("Turning motor 4 on")
pwm4.ChangeDutyCycle(20)
sleep(5)

pwm1.ChangeDutyCycle(0)
pwm2.ChangeDutyCycle(0)
pwm3.ChangeDutyCycle(0)
pwm4.ChangeDutyCycle(0)

GPIO.cleanup()