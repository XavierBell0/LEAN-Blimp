import RPi.GPIO as GPIO
from time import sleep

GPIO.setmode(GPIO.BCM)

Motor1PWM = 12
Motor1Dir = 5

GPIO.setup(Motor1PWM, GPIO.OUT)
GPIO.setup(Motor1Dir, GPIO.OUT)
GPIO.output(Motor1PWM, GPIO.LOW)
GPIO.output(Motor1Dir, GPIO.LOW)

pwm1 = GPIO.PWM(Motor1PWM, 1000)
pwm1.start(0)
sleep(.1)

print("Turning motor 1 on")
pwm1.ChangeDutyCycle(15)
sleep(15)
#print("Changing Direction")
#GPIO.output(Motor1Dir, GPIO.HIGH)
#pwm1.ChangeDutyCycle(100)

pwm1.stop()

GPIO.cleanup()