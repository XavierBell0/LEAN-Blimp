<h1> BEAN  </h1>
<h2> Blimp w/ Efficient Autonomous Navigation </h2>
Low power robotic platforms, constrained by their small form or long endurance, allow for more capable systems. Small form factors have limited power sources and therefore can only operate for short periods of time. These small robots can be used for warehouse surveillance, medicine delivery, and more. Long duration missions are more efficient if they consume less power and can function longer. These platforms are viable in space and for experimental climate/oceanographic monitoring. Decreasing power consumed by these systems increases mission lifetime. In these small and long duration regimes, the power required for computation and navigation is no longer negligible. 

This repository contains all files necessary to create one of these low power robotic platforms. As part of the MIT LEAN lab, we are pursuing BEAN, a miniature blimp that will use 1 Watt of computation power to 1 Watt of acutation power.

<h3> Motor Config </h3>
There are many existing motor configurations for blimp-like UAVs in academia and online. These designs were referenced in the creation of BEAN.

<p align="center">
<img src="README%20img/QuadMotorLayout.jpg" width=400px>
  <br>
  Typical Quad motor layout
</p>
A typical quadcopter has two pairs of motor that rotate in opposite direction. This allows for yaw control by throttling one pair down. Pitch control is acheived by throttling up forward or rear motors. Roll is done by throttling either the right or left side. Linear vertical motion is done through throttling all motors up or down. This suite of four motors gives dynamic and responsive control of the drone in three dimensions. However, this control doesn't translate well to a balloon. To move in the xy plane through pitch and roll, drone convert some of their vertical thrust to some horizontal. However, most of the thrust is still usually contributed to maintaining elevation. In the case of a blimp, the amount of thrust required to move forward and stay afloat is more comparable, so we would have to tilt quite far to get reasonable x/y acceleration. It makes more sense to assign forward motion to dedicated front-facing motors. This allows for most efficient use of thrust.

<br>
<br>

<p align="center">
<img src="README%20img/servo%20control.png" width=600px>
  <br>
  (A) Raspberry Pi W Zero;(B) 24 GHz Infineon Radar Position2Go; (C) Sub-micro Servo SG51R; (D) 8520 Coreless Motor; (E) PowerBoost 500 Basic; (F) 550mA 3.8V Li-Po Battery
</p>
Alvarez presents a lightwieght blimp design in "Evolved Neuromorpic Altitude Controller for an Autonomous Blimp." This design uses two motors and one servo. The motors are coupled to the servo and rotate together. This allows control by tilting the motors in the desired direction. This suite of thrusters gives control similar to a car.

<br>
<br>

<p align="center">
<img src="README%20img/GTMAB%20motor%20config.png" width=500px>
  <br>
  An example blimp gondola from Georgia Tech with various components located
</p>
The Georgia Tech GT-MAB is designed for "Monocular Vision-based Human Following on Miniature Robotic Blimp." Their condola has five motors: two vertical, two horizontal, and one sideways. This fifth sideways thruster allows for full three dimensional control.

<br>
<br>

<p align="center">
<img src="README%20img/3%20motor.png" width=500px>
  <br>
  Frame of 3 motor blimp config
</p>
Three motor configurations are somewhat common too, especially in the creation of online hobby projects. These designs use two vertical thrusters and one horizontal or vice versa. While giving the same theoretical control as the two DC motors and one servo setup, the imbalance in angular momentum created by spinning up or down the unpaired thruster will create a torque.

<br>
<br>

<p align="center">
<img src="README%20img/BEANcad.png" width=500px>
  <br>
  Frame of 3 motor blimp config
</p>
<h3> Balloon Config </h3>

<h3> Thrust Testing </h3>


