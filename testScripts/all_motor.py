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


pwm1 = GPIO.PWM(motors[0], 1000)
pwm2 = GPIO.PWM(motors[2], 1000)
pwm3 = GPIO.PWM(motors[4], 1000)
pwm4 = GPIO.PWM(motors[6], 1000)
print('set pwms')

pwm1.start(15)
pwm2.start(15)
pwm3.start(15)
pwm4.start(15)


sleep(15)
pwm1.stop(0)
pwm2.stop(0)
pwm3.stop(0)
pwm4.stop(0)

GPIO.cleanup()