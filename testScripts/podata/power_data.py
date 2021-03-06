"""LCM type definitions
This file automatically generated by lcm.
DO NOT MODIFY BY HAND!!!!
"""

try:
    import cStringIO.StringIO as BytesIO
except ImportError:
    from io import BytesIO
import struct

class power_data(object):
    __slots__ = ["pi_voltage", "pi_current", "pi_power", "motor_voltage", "motor_current", "motor_power"]

    def __init__(self):
        self.pi_voltage = 0.0
        self.pi_current = 0.0
        self.pi_power = 0.0
        self.motor_voltage = 0.0
        self.motor_current = 0.0
        self.motor_power = 0.0

    def encode(self):
        buf = BytesIO()
        buf.write(power_data._get_packed_fingerprint())
        self._encode_one(buf)
        return buf.getvalue()

    def _encode_one(self, buf):
        buf.write(struct.pack(">dddddd", self.pi_voltage, self.pi_current, self.pi_power, self.motor_voltage, self.motor_current, self.motor_power))

    def decode(data):
        if hasattr(data, 'read'):
            buf = data
        else:
            buf = BytesIO(data)
        if buf.read(8) != power_data._get_packed_fingerprint():
            raise ValueError("Decode error")
        return power_data._decode_one(buf)
    decode = staticmethod(decode)

    def _decode_one(buf):
        self = power_data()
        self.pi_voltage, self.pi_current, self.pi_power, self.motor_voltage, self.motor_current, self.motor_power = struct.unpack(">dddddd", buf.read(48))
        return self
    _decode_one = staticmethod(_decode_one)

    _hash = None
    def _get_hash_recursive(parents):
        if power_data in parents: return 0
        tmphash = (0x2c689998491dd6b5) & 0xffffffffffffffff
        tmphash  = (((tmphash<<1)&0xffffffffffffffff)  + (tmphash>>63)) & 0xffffffffffffffff
        return tmphash
    _get_hash_recursive = staticmethod(_get_hash_recursive)
    _packed_fingerprint = None

    def _get_packed_fingerprint():
        if power_data._packed_fingerprint is None:
            power_data._packed_fingerprint = struct.pack(">Q", power_data._get_hash_recursive([]))
        return power_data._packed_fingerprint
    _get_packed_fingerprint = staticmethod(_get_packed_fingerprint)

