package com.common;

import java.util.HashMap;
import java.util.Map;

/**
 * Created by wisdom on 2017-05-16.
 */
public class AppConstant {
    public static Map<String,String> SCHOOLTYPE;
    public static Map<String,String> schoolproperty;
    public static Map<String,String> schoolnature;
    static
    {
        SCHOOLTYPE=new HashMap<String, String>();
        SCHOOLTYPE.put("1","普通本科");
        SCHOOLTYPE.put("0","专科");

        schoolproperty=new HashMap<String, String>();
        schoolproperty.put("0","综合类");
        schoolproperty.put("1","理工类");
        schoolproperty.put("2","农林类");
        schoolproperty.put("3","医药类");
        schoolproperty.put("4","师范类");
        schoolproperty.put("5","语言类");
        schoolproperty.put("6","财经类");
        schoolproperty.put("7","政法类");
        schoolproperty.put("8","体育类");
        schoolproperty.put("9","艺术类");
        schoolproperty.put("10","民族类");
        schoolproperty.put("11","军事类");
        schoolproperty.put("12","其他类");

        schoolnature=new HashMap<String, String>();
        schoolnature.put("0","其他");
        schoolnature.put("1","教育部直属");
    }

}
