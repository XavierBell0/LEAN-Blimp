# -*- coding: utf-8 -*-
"""
Created on Tue Jul  5 17:01:28 2022

@author: xavie
"""

# -*- coding: utf-8 -*-
"""
Created on Fri Jul  1 17:21:31 2022

@author: xavie
"""

import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import matplotlib

def data_pull (sheet_id):
    '''
    Takes thrust test data from google sheets

    Parameters
    ----------
    sheet_id : string
        String of symbols between the d/ ----- /edit for google sheets

    Returns
    -------
    motor data and motor/prop combo names 

    '''

    df = pd.read_csv(f"https://docs.google.com/spreadsheets/d/{sheet_id}/export?format=csv") #pulls data from google sheets
    names_df = df['Names'] #Selects name column
    names = [x for x in names_df.values.tolist() if str(x) != 'nan']

    df2 = df[['Voltage', 'Current', 'Thrust']] #selects first 3 columns
    test_val = df2.values.tolist()

    Cuts = [test for test in range(len(test_val)) if test_val[test] == [0, 0, 0]]
    motors = []
    for entry in range(len(Cuts)-1):
        motors.append((test_val[Cuts[entry]+1:Cuts[entry+1]:]))
    
    return (motors, names)


def motor_analysis(thrust_data):
    '''
    Parameters
    ----------
    thrust_data : List
        List of motors array with each index being [Voltage, Current, Thrust]

    Returns
    total_motors
        Numpy arrary in form [Voltage, Current, Thrust, Power, Efficiency]

    '''
    total_motors = [] 
    for motor in thrust_data: # For each numpy array in list of motors
        analyzed = []
        for test in motor: # For each individual Current, Volt, Thrust pair
            test.extend([test[0]*test[1], test[2]/(test[0]*test[1])]) #Adds Power and Efficiency
            analyzed.append(test)  #Add these new rows to a list
        total_motors.append(np.array(analyzed)) #Make list numpy arrary and append to
        
    return total_motors


# print(df2.values.tolist())
# print(Cuts)
# print(motor720_2white)


def plotter(total_motors, names):
    '''
    Plots the combined power vs. thrust and efficiency vs. voltage
    
    Parameters
    ----------
    total_motors : List
        List of the analyzed motor data lists.
    names : List
        List of strings of the names of each motor prop combination as it appears in the spreadsheet

    Returns
    -------
    None

    '''
    
    colors = [x for x in matplotlib.colors.ColorConverter.colors.keys()][-2:-10:-1] #gets single char colors (excluding white) and some Tableau Palette
    colors.extend(['tab:brown', 'tab:orange', 'tab:purple', 'lime'])
    #print(colors)
    color_index = 0 #Use same color for same prop. Don't skip colors in list
    for motor in range(len(total_motors)):
        if names[motor] == names[motor-1]: #Same Prop different Motor make line dashed
            plt.plot(total_motors[motor][:,3], total_motors[motor][:,2], linestyle='dashed', c = colors[color_index-1])
            print(f'SAME as PREVIOUS {names[motor]}')
        else: 
            plt.plot(total_motors[motor][:,3], total_motors[motor][:,2], c = colors[color_index], label = names[motor])
            color_index += 1

    xpoints = [0, .5, 1]
    ypoints = [0, 4, 8] #Create line for required thrust assuming motor only produces half of thrust 
    plt.plot(xpoints, ypoints, linestyle='-.', color='k', lw=2, label = 'Thrust for 1m/s', scalex=False, scaley=False)
            
    plt.title('Power vs. Thrust from various motor/props')
    plt.xlabel('Power (W)')
    plt.ylabel('Thrust (g)')
    plt.legend()
    plt.show()
    
    color_index = 0 #Use same color for same prop. Don't skip colors in list
    for motor in range(len(total_motors)):
        if names[motor] == names[motor-1]: #Same Prop different Motor make line dashed
            plt.plot(total_motors[motor][:,1], total_motors[motor][:,4], linestyle='dashed', c = colors[color_index-1])
        else: 
            plt.plot(total_motors[motor][:,1], total_motors[motor][:,4], c = colors[color_index], label = names[motor])
            color_index += 1
            
    plt.title('Current vs. Efficiency from various motor/props')
    plt.xlabel('Current (A)')
    plt.ylabel('Efficiency (g/W)')
    plt.legend()
    plt.show()
    

def speed(motor, names, grav = 9.8, drag_coeff = .45, air = 1.225, cross_sec = .3):
    '''
    Creates plot of actuation power vs airspeed for a specific motor

    Parameters
    ----------
    motor : A List of the analyzed thrust data for one motor
        DESCRIPTION.
    names :List of string of names
        Name of the particular prop motor combo used
    grav : float, optional
        Acceleration due to gravity. The default is 9.8.
    drag_coeff : float, optional
        Drag coefficient in air. The default is .45.
    air : float, optional
        Air density. The default is 1.225.
    cross_sec : float, optional
        Cross_sec of balloon. The default is .3.

    Returns
    -------
    None. Plot of actuation power vs speed

    '''
    analyzed = []
    for test in motor: # For each individual Current, Volt, Thrust pair
        test = test.tolist()
        test.append(((2*(test[2]/1000)*grav)/(air*cross_sec*drag_coeff))**.5) #Adds est speed for each point
        analyzed.append(test)
    analyzed = np.array(analyzed)
        
    plt.plot(analyzed[:,3], analyzed[:,5], c = 'g', label = names[12]) #Make sure match with last line
    
    xpoints = ypoints = plt.xlim() #finds points to create line for 1-1 ratio
    plt.plot(xpoints, ypoints, linestyle='--', color='k', lw=2, label = '1-1 ratio', scalex=False, scaley=False)
    plt.title('Actuation Power vs Speed 1 motor')
    plt.xlabel('Power (W)')
    plt.ylabel('Speed (m/s)')
    plt.grid()
    plt.legend()
    plt.show()
    

############### RUN Functions #############
sheet_id = '1OiYe1rvC_GbhTWiBtDa-APiMod3p-sEL3HPwGkVhBRM'

motors = data_pull(sheet_id) #Gets (thrust data, names)
analyzed = motor_analysis(motors[0])
names = motors[1]
print(names)
plotter(analyzed, names)
speed(analyzed[12], names) #MAKE SURE NAMES AND INDEX MATCH



    