package com.jnshu.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class DateUtil {
    public static final String PATTERN_STANDARD = "yyyy-MM-dd HH:mm:ss";
    public static String formatTime(Long time) {
        if (time == null) {
            return " - ";
        }
        if (time == 0L) {
            return "  - ";
        }
        Date date = new Date(time);
        SimpleDateFormat formatter = new SimpleDateFormat(PATTERN_STANDARD);
        return formatter.format(date);
    }
}