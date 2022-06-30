# Write your code here :-)
import RPi.GPIO as GPIO
from time import sleep

GPIO.setmode(GPIO.BCM)

MotorPWM = 13
MotorDir = 6

GPIO.setup(MotorDir, GPIO.OUT)
GPIO.setup(MotorPWM, GPIO.OUT)

GPIO.output(MotorDir, GPIO.LOW)
pwm = GPIO.PWM(MotorPWM, 1000)

print("Turning motor on")
pwm.start(70)
sleep(3)
print("Changing Direction")
GPIO.output(MotorDir, GPIO.HIGH)
sleep(3)


GPIO.cleanup()