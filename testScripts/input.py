from sshkeyboard import listen_keyboard
import lcm

from modata import motion_data

lc = lcm.LCM()

def press(key):
    msg = motion_data()
    msg.linear_speed = 0.0
    msg.angular_speed = 0.0
    msg.vertical_speed = 0.0

    if key == "w":
        msg.linear_speed = 1
        print('haahahahhahahaha')
    if key == "s":
        msg.linear_speed = -1
    if key == "d":
        msg.angular_speed = 1
    if key == "a":
        msg.angular_speed = -1
    if key == "=":
        msg.vertical_speed = 1
    if key == "-":
        msg.vertical_speed = -1

    lc.publish("MOTION", msg.encode())

while True:
    listen_keyboard(on_press=press)