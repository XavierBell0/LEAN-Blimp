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
        samples = 10
        avg_power_y = []
        for entry in range(len(power_y)-samples):
            sample = power_y[entry:entry + samples]
            avg_power_y.append(sum(sample)/len(sample))
        avg_current_y = []
        for entry in range(len(current_y)-samples):
            sample = current_y[entry:entry + samples]
            avg_current_y.append(sum(sample)/len(sample))

        fig, (ax1, ax2, ax3) = plt.subplots(3, sharex=True)
        ax1.plot(np.array(time_x), np.array(voltage_y))
        ax1.set_ylim([2, 5.25])
        ax1.set(xlabel = 'Time (s)', ylabel = "Voltage (V)")
        ax2.plot(np.array(time_x), np.array(current_y))
        ax2.plot(np.array(time_x[:-samples]), np.array(avg_current_y))
        ax2.set_ylim([0, 1500])
        ax2.set(xlabel = 'Time (s)', ylabel = "Current (mA)")
        ax3.plot(np.array(time_x), np.array(power_y))
        ax3.plot(np.array(time_x[:-samples]), np.array(avg_power_y))
        ax3.set_ylim([0, 5])
        ax3.set(xlabel = 'Time (s)', ylabel = "Power (W)")
        #running_power = []
        #for p in power_y:
            #if p > 0.2:
                #running_power.append(p)
        #print(sum(running_power)/len(running_power))
        counter = 0
        while os.path.isfile("/home/pi/LEAN-Blimp/testScripts/graphs/"+ title + str(counter) + ".png"):
            counter += 1
        plt.savefig("/home/pi/LEAN-Blimp/testScripts/graphs/"+ title + str(counter) + ".png")


    plotter(motor_data, 'ActuationPower')
    plotter(pi_data, 'ComputationPower')