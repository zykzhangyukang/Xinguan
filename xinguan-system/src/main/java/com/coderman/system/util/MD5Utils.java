package com.coderman.system.util;

import org.apache.shiro.crypto.hash.SimpleHash;

/**
 * @Author zhangyukang
 * @Date 2020/12/15 14:54
 * @Version 1.0
 **/
public class MD5Utils {
    /**
     * 密码加密
     * @return
     */
    public static String md5Encryption(String source,String salt){
        String algorithmName = "MD5";//加密算法
        int hashIterations = 1024;//加密次数
        SimpleHash simpleHash = new SimpleHash(algorithmName,source,salt,hashIterations);
        return simpleHash+"";
    }
}
