import RPi.GPIO as GPIO
from time import sleep

GPIO.setmode(GPIO.BCM)

Motor1PWM = 12
Motor1Dir = 5

GPIO.setup(Motor1PWM, GPIO.OUT)
GPIO.setup(Motor1Dir, GPIO.OUT)
GPIO.output(Motor1PWM, GPIO.LOW)
GPIO.output(Motor1Dir, GPIO.LOW)

pwm1 = GPIO.PWM(Motor1PWM, 100)

print("Turning motor 1 on")
pwm1.start(20)
sleep(3)
print("Changing Direction")
GPIO.output(Motor1Dir, GPIO.HIGH)
sleep(3)
pwm1.ChangeDutyCycle(100)
