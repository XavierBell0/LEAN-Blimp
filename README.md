# BEAN  CODE
## Blimp w/ Efficient Autonomous Navigation

### See hardware and design considerations at <a href="https://github.com/XavierBell0/BEAN-Docs">BEAN-Docs</a>

Small form and long endurance missions require low power robotic systems. Small form factors have limited power sources and therefore can only operate for short periods of time. Long duration missions are more efficient if they consume less power and can function longer. These functions are especially useful for space platforms, monitoring systems, and medicine delivery. Decreasing power consumption increases mission duration. In these small and long duration regimes, the power required for computation and navigation is no longer negligible. 

This repository contains all files necessary to create one of these low power robotic platforms. As part of the MIT LEAN lab, we are pursuing BEAN, a miniature blimp that will use 1 Watt of computation power to 1 Watt of actuation power at 1m/s.

## Table of Contents  
**[Specs](#specs)**<br>
**[LCM](#lightweight-communication-and-marshaling)**<br>
**[Installs](#installs)**<br>
**[Sensor Config](#sensor-config)**<br>
**[Data Collect](#data-collect)**<br>
**[Experimentation](#experimentation)**<br>

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
sudo apt-get install sqlite
```
#### Adafruit INA219 library
Configuring and retrieving data from the INA219 power sensor
```
sudo apt-get install adafruit_ina219
```

## Sensor Config
The power sensors need to be configured correctly to get accurate and sensible data. Shown below are very noisy graphs that are still nonsensical even after a generous averaging filter was applied. 
<p align="center">
  <img src="https://github.com/XavierBell0/BEAN-Docs/blob/main/READMEimg/4%20motors%20w%20props.png" alt="Noisy Data" height="300"/> <img src="https://github.com/XavierBell0/BEAN-Docs/blob/main/READMEimg/ActuationPower10.png" alt="Noisy Data" height="300" />
  <br>
  The orange line is a .5 second averaging filter. The left was perfomed in flight, the right was a bench test where all motors were spun for 15seconds.
</p>

Unfortunately there is not great documentation on the solution to this issue. The right is especially puzzling because there is power when there is no current and there is no current when the motors were spinning. Much experimentation lead me to the following but it might need revision. In power_sensing.py the following lines are included.
```
pi = INA219(i2c_bus, 0x40)
motor = INA219(i2c_bus, 0x41)
```
0x40 is the default I2C address for INA219 sensors. Add solder to the designated pads to change the address for the 2nd sensor. 0x41, 0x42, 0x43, and 0x44 are all possible. If you aren't  recieving data, make sure the I2C address is correct.

```
pi.set_calibration_32V_1A()
motor.set_calibration_32V_1A()
```
This does some stuff in the back to config. We aren't going to get near 32V, but will sit around 1A. If necessary use set_calibration_32V_2A(). More info in the <a href="https://github.com/adafruit/Adafruit_CircuitPython_INA219/blob/main/adafruit_ina219.py">INA219 adafruit docs</a>

```
pi.bus_voltage_range = BusVoltageRange.RANGE_16V
motor.bus_voltage_range = BusVoltageRange.RANGE_16V
```
Simply decreases the range of measurement to get more bins/precision.

```
pi.bus_adc_resolution = ADCResolution.ADCRES_12BIT_32S
pi.shunt_adc_resolution = ADCResolution.ADCRES_12BIT_32S
motor.bus_adc_resolution = ADCResolution.ADCRES_12BIT_32S
motor.shunt_adc_resolution = ADCResolution.ADCRES_12BIT_32S
```
Change configuration to use 32 samples averaging for both bus voltage and shunt voltage. It takes a very short amount of time to take one sample (exact numbers in INA219 library docs above). If the PWM frequency is not sufficiently large enough, it will not normalize when taking quick samples. **Use a PWM frequency of at least 1000hz**. If you increase the number of samples for averaging, you must also increase the PWM freq.

After all this, the new graphs look much nicer.
<p align="center">
  <img src="https://github.com/XavierBell0/BEAN-Docs/blob/main/READMEimg/4%20motor%20w%20props%2032samp.png" alt="Cleaner Data" height="300"/> 
</p>

## Data collect
Data collection is performed by recieving sensor data through I2C, creating an SQL database to store new data, and then graphing. All of this is done on the Raspberry Pi Zero W itself. The graphs can then be transfered to another computer through scp or by uploading to a git repo. We plan to include live graphing in a GUI in the future. 

### Teleop Flights
To simply fly the blimp, run the following commands in the BEAN directory. The controls are below
- "w": forward
- "s": back
- "a": left
- "d": right
- "-": down
- "=": up
- Any other: stop all motors.
```
sudo python3 control.py & sudo python3 input.py &
```
Once print statement for the motors configure do the following to bring input to the foreground
```
fg %2
```
End with ^C. Make sure to interupt both scripts. You can run "jobs" to see if any remain.
Take to the skies! But don't go outside so more like "Take to the Ceilings!"

### Power sensing & Teleop
Run the following commands in the BEAN directory to fly with power sensing.
```
sudo python3 control.py & sudo python3 input.py & sudo python3 power_sensing.py & sudo python3 power_collect.py &
```

Fly for as long as desired. When finished, interupt power_sensing first, then end all other jobs. To generate a graph, do
```
sudo python3 power_plotter.py
```
This will add a new ComputationPower#.png and ActuationPower# to the graphs folder. You may then export to your computer with the following
```
scp -r pi@[PI_IP_ADDRESS]:/home/pi/LEAN-Blimp/testScripts/graphs [desired directionary on local computer]
```
The -r tag exports the entire graphs folder recursively. 

## Experimentation
The initial flights of BEAN showed a loss of control after reaching a certain speed. The blimp veered sharply left or right before reaching top speed. It was unstable. The primitive controls described above had no throttle control for each channel which made adjusting very diffucult. The airframe also doesn't react quickly so recognizing there is often not enough time after recognizing drift to correct. If a correction is made, then it is very often an overcorrection and the blimp sprials out in the opposite direction. This can hopefully be fixed with a PID controller in short term and state space control in the future. The propellers also seem to perform noticably less efficient than on the test stand. Currently BEAN consumes about 3W for 1m/s of velocity.
