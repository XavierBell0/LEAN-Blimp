#Adapted from code written by Alex Rice
import time
import lcm
import numpy as np
import matplotlib
matplotlib.use("Agg")
import matplotlib.pyplot as plt
import sqlite3
import os.path

power_db = "/home/pi/LEAN-Blimp/testScripts/power.db"

with sqlite3.connect(power_db) as c:
    motor_data = c.execute('''SELECT * FROM actuation_power_data WHERE source = ? ORDER BY rowid DESC;''', ("ACTUATION",)).fetchall()
    pi_data = c.execute('''SELECT * FROM computation_power_data WHERE source = ? ORDER BY rowid DESC;''', ("COMPUTATION",)).fetchall()
    def plotter(data_entries, title):
        voltage_y = []
        current_y = []
        power_y = []
        time_x = []
        for entry in data_entries:
            voltage_y.append(entry[1])
            current_y.append(entry[2])
            power_y.append(entry[3])
            time_x.append(entry[4])
        fig, axs = plt.subplots(3)
        #plt.subplot(3,1,1)
        #plt.plot(np.array(time_x), np.array(voltage_y))
        axs[0].plot(np.array(time_x), np.array(voltage_y))
        plt.ylabel("Voltage (V)")
        #plt.subplot(3,1,2)
        #plt.plot(np.array(time_x), np.array(current_y))
        axs[1].plot(np.array(time_x), np.array(current_y))
        plt.ylabel("Current (mA)")
        #plt.subplot(3,1,3)
        #plt.plot(np.array(time_x), np.array(power_y))
        axs[2].plot(np.array(time_x), np.array(power_y))
        plt.ylabel("Power (W)")
        #running_power = []
        #for p in power_y:
            #if p > 0.2:
                #running_power.append(p)
        #print(sum(running_power)/len(running_power))
        plt.xlabel("Time (s)")
        counter = 0
        while os.path.isfile("/home/pi/LEAN-Blimp/testScripts/graphs/"+ title + str(counter) + ".png"):
            counter += 1
        plt.savefig("/home/pi/LEAN-Blimp/testScripts/graphs/"+ title + str(counter) + ".png")


    plotter(motor_data, 'ActuationPower')
    plotter(pi_data, 'ComputationPower')