import Rpi.GPIO as GPIO
from time import sleep
GPIO.setmode(GPIO.BCM)

Motor1PWM = 13
Motor1Dir = 16

GPIO.setup(13, GPIO.OUT)
GPIO.setup(16, GPIO.OUT)

GPIO.output(13, GPIO.HIGH)
GPIO.output(16, GPIO.LOW)
sleep(5)

GPIO.cleanup()