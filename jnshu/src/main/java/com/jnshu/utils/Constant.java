package com.jnshu.utils;

import java.util.UUID;

public class Constant {
    public static final String JWT_ID = UUID.randomUUID().toString();

    /**
     * 加密密文
     */
    public static final String JWT_SECRET = "www.jnahu.com";
    public static final int JWT_TTL = 60*60*1000;  //millisecond
}