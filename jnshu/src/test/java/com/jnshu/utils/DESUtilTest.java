package com.jnshu.utils;

import org.junit.Test;

import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;

import static org.junit.Assert.*;

public class DESUtilTest {

    @Test
    public void encrypt() {
        DesUtils desUtils=new DesUtils();
        Base64 base64=new Base64();
        Long time=System.currentTimeMillis();
        byte[] times=ByteUtils.longToBytes(time);

        String string="hjh7210332..";
        DESUtil desUtil=new DESUtil();
        String password="12345678";
        byte[] result=desUtil.encrypt(string.getBytes(),password);
        String results=null;
        String b=new String(base64.encode(result));
        System.out.println("加密后："+b);
        try {
            byte[] decryResult = desUtil.decrypt(result, password);
            System.out.println("解密后："+new String(decryResult));
        } catch (Exception e1) {
            e1.printStackTrace();
        }
    }
    @Test
    public void decrypt() {
    }
    @Test
    public void listByName() throws Exception{
        DesUtils desUtils=new DesUtils();
        long loginTime=System.currentTimeMillis();
        String str1=desUtils.encryptFromLong(loginTime);
        System.out.println(str1);
        long str2=desUtils.decryptToLong(str1);
        System.out.println("l"+str2);
        System.out.println(desUtils.encrypt("hjh7210332.."));
    }
}