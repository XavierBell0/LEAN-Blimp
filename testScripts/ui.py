from sshkeyboard import listen_keyboard
#import keyboard
import lcm

from modata import motion_data

lc = lcm.LCM()

def press(key):
    msg = motion_data()
    msg.linear_speed = 0.0
    msg.angle = 0.0

        msg.linear_speed = 1
    if key == "w":
    if key == "a":
        msg.angle = -1
    elif key == "d":
        msg.angle = 1

    lc.publish("MOTION", msg.encode())

while True:
    listen_keyboard(on_press=press)