package com.jnshu.utils;

import java.io.IOException;
/**
 * @ version 1.0
 * @ author  wangwei
 * @ created on  2008-10-17
 */
public class ByteAndLongArrayTest {
    /**
     * long数组转化为byte数组
     *
     * @param longArray
     * @return
     * @throws IOException
     */
    public static byte[] longToByte(long[] longArray)throws IOException{
        byte[] byteArray=new byte[longArray.length*8];
        for(int i=0;i<longArray.length;i++)
        {
            byteArray[0+8*i]=(byte)(longArray[i]>>56);
            byteArray[1+8*i]=(byte)(longArray[i]>>48);
            byteArray[2+8*i]=(byte)(longArray[i]>>40);
            byteArray[3+8*i]=(byte)(longArray[i]>>32);
            byteArray[4+8*i]=(byte)(longArray[i]>>24);
            byteArray[5+8*i]=(byte)(longArray[i]>>16);
            byteArray[6+8*i]=(byte)(longArray[i]>>8);
            byteArray[7+8*i]=(byte)(longArray[i]>>0);
        }
        return byteArray;
    }


    /**
     * byte数组转化为long数组
     *
     * @param byteArray
     * @return
     * @throws IOException
     */
    public static long[] byteToLong(byte[] byteArray)throws IOException{

        long [] longArray=new long[byteArray.length/8];
        for(int i=0;i<longArray.length;i++)
        {
            longArray[i]=(((long)byteArray[0+8*i]&0xff)<<56)
                    |(((long)byteArray[1+8*i]&0xff)<<48)
                    |(((long)byteArray[2+8*i]&0xff)<<40)
                    |(((long)byteArray[3+8*i]&0xff)<<32)
                    |(((long)byteArray[4+8*i]&0xff)<<24)
                    |(((long)byteArray[5+8*i]&0xff)<<16)
                    |(((long)byteArray[6+8*i]&0xff)<<8)
                    |(((long)byteArray[7+8*i]&0xff)<<0);

        }
        return longArray;
    }
    /**
     * @param args
     */
//    public static void main(String[] args) throws Exception{
//        // TODO Auto-generated method stub
//        long [] longArray={1,2,3,4,500000};
//        byte [] byteArray=longToByte(longArray);
//        for(int i=0;i<byteArray.length;i++)
//        {
//            System.out.print(byteArray[i]+" ");
//        }
//        System.out.println();
//        long [] longArray2=byteToLong(byteArray);
//        for(int i=0;i<longArray.length;i++)
//            System.out.print(longArray[i]+" ");
//    }
}
