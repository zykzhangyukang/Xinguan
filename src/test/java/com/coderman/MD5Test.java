package com.coderman;

import com.coderman.api.common.utils.MD5Utils;
import org.junit.jupiter.api.Test;

import java.util.UUID;

/**
 * @Author zhangyukang
 * @Date 2020/8/19 14:27
 * @Version 1.0
 **/
public class MD5Test {
    /**
     * 生成密码和盐值
     */
    @Test
    public void testMd5(){
        final String username="admin";
        final String password="123456";
        String salt= UUID.randomUUID().toString();
        String realPassword = MD5Utils.md5Encryption(password, salt);
        System.out.println("用户名:"+username);
        System.out.println("盐值:"+salt);
        System.out.println("加密后的密码:"+realPassword);
    }
}
