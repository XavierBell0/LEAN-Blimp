/* LCM type definition class file
 * This file was automatically generated by lcm-gen
 * DO NOT MODIFY BY HAND!!!!
 */

package lcmtest3;
 
import java.io.*;
import java.util.*;
import lcm.lcm.*;
 
public final class arrays_t implements lcm.lcm.LCMEncodable
{
    public byte arr[];
 
    public arrays_t()
    {
        arr = new byte[10];
    }
 
    public static final long LCM_FINGERPRINT;
    public static final long LCM_FINGERPRINT_BASE = 0x3f2258e55559faf8L;
 
    public static final byte dim = (byte) 10;

    static {
        LCM_FINGERPRINT = _hashRecursive(new ArrayList<Class<?>>());
    }
 
    public static long _hashRecursive(ArrayList<Class<?>> classes)
    {
        if (classes.contains(lcmtest3.arrays_t.class))
            return 0L;
 
        classes.add(lcmtest3.arrays_t.class);
        long hash = LCM_FINGERPRINT_BASE
            ;
        classes.remove(classes.size() - 1);
        return (hash<<1) + ((hash>>63)&1);
    }
 
    public void encode(DataOutput outs) throws IOException
    {
        outs.writeLong(LCM_FINGERPRINT);
        _encodeRecursive(outs);
    }
 
    public void _encodeRecursive(DataOutput outs) throws IOException
    {
        outs.write(this.arr, 0, 10);
 
    }
 
    public arrays_t(byte[] data) throws IOException
    {
        this(new LCMDataInputStream(data));
    }
 
    public arrays_t(DataInput ins) throws IOException
    {
        if (ins.readLong() != LCM_FINGERPRINT)
            throw new IOException("LCM Decode error: bad fingerprint");
 
        _decodeRecursive(ins);
    }
 
    public static lcmtest3.arrays_t _decodeRecursiveFactory(DataInput ins) throws IOException
    {
        lcmtest3.arrays_t o = new lcmtest3.arrays_t();
        o._decodeRecursive(ins);
        return o;
    }
 
    public void _decodeRecursive(DataInput ins) throws IOException
    {
        this.arr = new byte[(int) 10];
        ins.readFully(this.arr, 0, 10); 
    }
 
    public lcmtest3.arrays_t copy()
    {
        lcmtest3.arrays_t outobj = new lcmtest3.arrays_t();
        outobj.arr = new byte[(int) 10];
        System.arraycopy(this.arr, 0, outobj.arr, 0, 10); 
        return outobj;
    }
 
}

