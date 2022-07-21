import RPi.GPIO as GPIO
import time

GPIO.setmode(GPIO.BCM)

GPIO.setup(6, GPIO.OUT)
GPIO.setup(12, GPIO.OUT)

GPIO.output(6, GPIO.LOW)
pwm = GPIO.PWM(12, 1000)

pwm.start(10)
time.sleep(5)
pwm.ChangeDutyCycle(0)
time.sleep(5)
pwm.ChangeDutyCycle(40)
time.sleep(3)
pwm.stop()

GPIO.cleanup()