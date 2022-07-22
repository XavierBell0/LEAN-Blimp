import time
import board
from adafruit_ina219 import ADCResolution, BusVoltageRange, INA219


i2c_bus = board.I2C()
print(i2c_bus)
pi_ina219 = INA219(i2c_bus, 0x40)
motor_ina219 = INA219(i2c_bus, 0x41)

print("ina219 test")

# display some of the advanced field (just to test)
print("Config register:")
print("  bus_voltage_range:    0x%1X" % pi_ina219.bus_voltage_range)
print("  gain:                 0x%1X" % pi_ina219.gain)
print("  bus_adc_resolution:   0x%1X" % pi_ina219.bus_adc_resolution)
print("  shunt_adc_resolution: 0x%1X" % pi_ina219.shunt_adc_resolution)
print("  mode:                 0x%1X" % pi_ina219.mode)
print("")

# optional : change configuration to use 32 samples averaging for both bus voltage and shunt voltage
pi_ina219.bus_adc_resolution = ADCResolution.ADCRES_12BIT_32S
pi_ina219.shunt_adc_resolution = ADCResolution.ADCRES_12BIT_32S
motor_ina219.bus_adc_resolution = ADCResolution.ADCRES_12BIT_32S
motor_ina219.shunt_adc_resolution = ADCResolution.ADCRES_12BIT_32S
# optional : change voltage range to 16V
pi_ina219.bus_voltage_range = BusVoltageRange.RANGE_16V
motor_ina219.bus_voltage_range = BusVoltageRange.RANGE_16V

# measure and display loop
while True:
    pi_bus_voltage = pi_ina219.bus_voltage  # voltage on V- (load side)
    pi_shunt_voltage = pi_ina219.shunt_voltage  # voltage between V+ and V- across the shunt
    pi_current = pi_ina219.current  # current in mA
    pi_power = pi_ina219.power  # power in watts

    motor_bus_voltage = motor_ina219.bus_voltage  # voltage on V- (load side)
    motor_shunt_voltage = motor_ina219.shunt_voltage  # voltage between V+ and V- across the shunt
    motor_current = motor_ina219.current  # current in mA
    motor_power = motor_ina219.power # power in watts

    # INA219 measure bus voltage on the load side. So PSU voltage = bus_voltage + shunt_voltage
    print("Pi-side power data:")
    print("Voltage (VIN+) : {:6.3f}   V".format(pi_bus_voltage + pi_shunt_voltage))
    print("Voltage (VIN-) : {:6.3f}   V".format(pi_bus_voltage))
    print("Shunt Voltage  : {:8.5f} V".format(pi_shunt_voltage))
    print("Shunt Current  : {:7.4f}  A".format(pi_current / 1000))
    print("Power Calc.    : {:8.5f} W".format(pi_bus_voltage * (pi_current / 1000)))
    print("Power Register : {:6.3f}   W".format(pi_power))
    print("")

    # Check internal calculations haven't overflowed (doesn't detect ADC overflows)
    if pi_ina219.overflow or motor_ina219.overflow:
        print("Internal Math Overflow Detected!")
        print("")

    time.sleep(1)

    print("Motor-side power data:")
    print("Voltage (VIN+) : {:6.3f}   V".format(motor_bus_voltage + motor_shunt_voltage))
    print("Voltage (VIN-) : {:6.3f}   V".format(motor_bus_voltage))
    print("Shunt Voltage  : {:8.5f} V".format(motor_shunt_voltage))
    print("Shunt Current  : {:7.4f}  A".format(motor_current / 1000))
    print("Power Calc.    : {:8.5f} W".format(motor_bus_voltage * (motor_current / 1000)))
    print("Power Register : {:6.3f}   W".format(motor_power))
    print("")

    # Check internal calculations haven't overflowed (doesn't detect ADC overflows)
    if pi_ina219.overflow or motor_ina219.overflow:
        print("Internal Math Overflow Detected!")
        print("")

    time.sleep(1)