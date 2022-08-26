# BEAN  CODE
## Blimp w/ Efficient Autonomous Navigation
Low power robotic platforms, constrained by their small form or long endurance, allow for more capable systems. Small form factors have limited power sources and therefore can only operate for short periods of time. These small robots can be used for warehouse surveillance, medicine delivery, and more. Long duration missions are more efficient if they consume less power and can function longer. These platforms are viable in space and for experimental climate/oceanographic monitoring. Decreasing power consumed by these systems increases mission lifetime. In these small and long duration regimes, the power required for computation and navigation is no longer negligible. 

This repository contains all files necessary to create one of these low power robotic platforms. As part of the MIT LEAN lab, we are pursuing BEAN, a miniature blimp that will use 1 Watt of computation power to 1 Watt of actuation power at 1m/s.

## Table of Contents  
**[Specs](#specs)**<br>
**[LCM](#lightweight-communication-and-marshaling)**<br>
**[Installs](#installs)**<br>
**[Experimentation](#experimentation)**<br>
**[Data Collect](#data-collect)**<br>

## Specs
- 7x20mm motors (4)
- 75mm Gemfan HBN props (4)
- L9110s Motor Controller (2)
- INA219 Power Sensor (2)
- MPU6050 IMU (1)
- Raspberry Pi Zero 1.1 W (1)
- 340mAh LiPo battery (2)

Total weight = 79.5g <br>
Balloon max lift = 84.2g

### Lightweight Communication and Marshaling
Lightweight Communication andd Marshaling (LCM) is a set of libraries used for message passing. It can be thought of as a lighter replacement for ROS with support in multiple languages. LCM uses a publish/subscribe model for message passing. Its also simple to **[install](#lcm-install)**. LCM was used in development for teleoperation testing, power sensing, imu data, and positional data in the MIT motion capture room.
## Installs
In order to control BEAN, a number of different packages need to be installed. Most of them require a single line in the terminal though.
### **LCM Install**
Build instructions can be found [here](https://lcm-proj.github.io/build_instructions.html). <br>
If you encounter the [Python unable to find lcm._lcm](https://github.com/lcm-proj/lcm/issues/299) message try running the following commands in your lcm-python folder.
```
cd ../lcm-python
sudo python3 setup.py install
```
If you need to change the LCM messages or create a new channel see [here](https://lcm-proj.github.io/tut_lcmgen.html).
### **General packages**
Some of these will come with the Pi by default, but if you are raised an error, try this.
#### Numpy
General math and matrix manipulation
```
sudo pip3 install numpy
```
#### Matplotlib
Making those pretty graphs
```
sudo pip3 install matplotlib
```
#### SQLite3
Making SQL databases for collecting power and IMU data
```
sudo apt-get install sqlite3
```
#### Adafruit INA219 library
Configuring and retrieving data from the INA219 power sensor
```
sudo apt-get install adafruit_ina219
```
## Data collect
Graphing - turn off avg filter and thrust stuff
Power sensor config
## Experimentation
