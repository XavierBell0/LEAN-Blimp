#Adapted from code written by Alex Rice
import time
import lcm
import sqlite3
from podata import power_data

power_db = "/home/pi/LEAN-Blimp/testScripts/power.db"
with sqlite3.connect(power_db) as c:
    c.execute("""DROP TABLE IF EXISTS actuation_power_data;""")
    c.execute("""DROP TABLE IF EXISTS computation_power_data;""")
    c.execute("""CREATE TABLE IF NOT EXISTS actuation_power_data (source text, voltage decimal, current decimal, power decimal, time int);""")
    c.execute("""CREATE TABLE IF NOT EXISTS computation_power_data (source text, voltage decimal, current decimal, power decimal, time int);""")


def my_handler(channel, data):
    msg = power_data.decode(data)
    try:
        with sqlite3.connect(power_db) as c:
            c.execute('''INSERT into actuation_power_data VALUES (?,?,?,?,?);''',("ACTUATION",msg.motor_voltage,msg.motor_current,msg.motor_power,time.time()))
            c.execute('''INSERT into computation_power_data VALUES (?,?,?,?,?);''',("COMPUTATION",msg.pi_voltage,msg.pi_current,msg.pi_power,time.time()))

    except:
        print("database does not exist")
    return

lc = lcm.LCM()
subscription = lc.subscribe("POWER", my_handler)

while True:
    lc.handle()