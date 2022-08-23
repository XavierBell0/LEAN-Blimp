// THIS IS AN AUTOMATICALLY GENERATED FILE.  DO NOT MODIFY
// BY HAND!!
//
// Generated by lcm-gen

package lcmtest2

import (
	"encoding/binary"
	"fmt"
	"math"
	"math/bits"
)

const _ = math.Pi
const _ = bits.UintSize

const another_type_t_Fingerprint uint64 = 0xd21b643a1f224c57

type Lcmtest2AnotherTypeT struct {
	Val int32 `val`
}

// Copy creates a deep copy
// TODO: fix the fugly x and p names...
func (x *Lcmtest2AnotherTypeT) Copy() (p Lcmtest2AnotherTypeT) {
	p.Val = x.Val

	return
}

// Encode encodes a message (fingerprint & data) into binary form
//
// returns Encoded data or error
func (p *Lcmtest2AnotherTypeT) Encode() (data []byte, err error) {
	var size int
	if size, err = p.Size(); err != nil {
		return
	}

	data = make([]byte, 8+size)
	binary.BigEndian.PutUint64(data, Lcmtest2AnotherTypeT_Fingerprint())

	var d []byte
	if d, err = p.MarshalBinary(); err != nil {
		return
	}

	if copied := copy(data[8:], d); copied != size {
		return []byte{},
			fmt.Errorf("Encoding error, buffer not filled (%v != %v)", copied, size)
	}
	return
}

// MarshalBinary implements the BinaryMarshaller interface
func (p *Lcmtest2AnotherTypeT) MarshalBinary() (data []byte, err error) {
	var size int
	if size, err = p.Size(); err != nil {
		return
	}

	data = make([]byte, size)
	offset := 0

	// LCM struct name: val
	binary.BigEndian.PutUint32(data[offset:],
		uint32(p.Val))
	offset += 4

	return
}

// Decode decodes a message (fingerprint & data) from binary form
// and verifies that the fingerprint match the expected
//
// param data The buffer containing the encoded message
// returns Error
func (p *Lcmtest2AnotherTypeT) Decode(data []byte) (err error) {
	length := len(data)
	if length < 8 {
		return fmt.Errorf("Missing fingerprint in buffer")
	}

	if fp := binary.BigEndian.Uint64(data[:8]); fp != Lcmtest2AnotherTypeT_Fingerprint() {
		return fmt.Errorf("Fingerprints does not match (got %x expected %x)",
			fp, Lcmtest2AnotherTypeT_Fingerprint())
	}

	if err = p.UnmarshalBinary(data[8:]); err != nil {
		return
	}

	length -= 8
	var size int
	if size, err = p.Size(); err != nil {
		return
	}
	if length != size {
		return fmt.Errorf("Missing data in buffer (size missmatch, got %v expected %v)",
			length, size)
	}

	return
}

// UnmarshalBinary implements the BinaryUnmarshaler interface
func (p *Lcmtest2AnotherTypeT) UnmarshalBinary(data []byte) (err error) {
	offset := 0

	p.Val = int32(binary.BigEndian.Uint32(data[offset:]))
	offset += 4

	return
}

// Fingerprint generates the LCM fingerprint value for this message
func Lcmtest2AnotherTypeT_Fingerprint(path ...uint64) uint64 {
	for _, v := range path {
		if v == another_type_t_Fingerprint {
			return 0
		}
	}

	path = append(path, another_type_t_Fingerprint)
	return bits.RotateLeft64(another_type_t_Fingerprint, 1)
}

// Size returns the size of this message in bytes
func (p *Lcmtest2AnotherTypeT) Size() (size int, err error) {

	size += 4 // p.Val

	return
}
