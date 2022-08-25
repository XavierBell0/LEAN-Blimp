# BEAN  CODE
## Blimp w/ Efficient Autonomous Navigation
Low power robotic platforms, constrained by their small form or long endurance, allow for more capable systems. Small form factors have limited power sources and therefore can only operate for short periods of time. These small robots can be used for warehouse surveillance, medicine delivery, and more. Long duration missions are more efficient if they consume less power and can function longer. These platforms are viable in space and for experimental climate/oceanographic monitoring. Decreasing power consumed by these systems increases mission lifetime. In these small and long duration regimes, the power required for computation and navigation is no longer negligible. 

This repository contains all files necessary to create one of these low power robotic platforms. As part of the MIT LEAN lab, we are pursuing BEAN, a miniature blimp that will use 1 Watt of computation power to 1 Watt of actuation power at 1m/s.

#### Table of Contents  
**[Specs](#specs)**<br>
**[Motor Config](#motor-config)**<br>
**[Balloon Choice](#balloon-choice)**<br>
**[Thrust Testing](#thrust-testing)**<br>
**[Electronics](#electronics)**<br>

### Specs
- 7x20mm motors (4)
- 75mm Gemfan HBN props (4)
- L9110s Motor Controller (2)
- INA219 Power Sensor (2)
- MPU6050 IMU (1)
- Raspberry Pi Zero 1.1 W (1)
- 340mAh LiPo battery (2)

Total weight = 79.5g <br>
Balloon max lift = 84.2g
