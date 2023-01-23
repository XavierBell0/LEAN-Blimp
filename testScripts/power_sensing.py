import time
import board
import lcm
from adafruit_ina219 import ADCResolution, BusVoltageRange, INA219
from podata import power_data

lc = lcm.LCM()

i2c_bus = board.I2C()
pi = INA219(i2c_bus, 0x40)
motor = INA219(i2c_bus, 0x41)

#configure to measure up to 32V and 1A, will change to 16V later
pi.set_calibration_32V_1A()
motor.set_calibration_32V_2A()

#change configuration to use 32 samples averaging for both bus voltage and shunt voltage
pi.bus_adc_resolution = ADCResolution.ADCRES_12BIT_32S
pi.shunt_adc_resolution = ADCResolution.ADCRES_12BIT_32S
motor.bus_adc_resolution = ADCResolution.ADCRES_12BIT_32S
motor.shunt_adc_resolution = ADCResolution.ADCRES_12BIT_32S
#change voltage range to 16V
pi.bus_voltage_range = BusVoltageRange.RANGE_16V
motor.bus_voltage_range = BusVoltageRange.RANGE_16V

#measure loop
while True:
    msg = power_data()
    msg.pi_voltage = pi.bus_voltage  # voltage on V- (load side)
    msg.pi_current = pi.current  # current in mA
    msg.pi_power = pi.power  # power in watts
    msg.motor_voltage = motor.bus_voltage  # voltage on V- (load side)
    msg.motor_current = motor.current  # current in mA
    msg.motor_power = motor.power # power in watts

    lc.publish("POWER", msg.encode())
    time.sleep(.05)