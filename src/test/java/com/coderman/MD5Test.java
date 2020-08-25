package com.coderman;

import com.coderman.api.common.utils.MD5Utils;
import org.junit.Test;

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
        String salt= UUID.randomUUID().toString();
        String username="admin";
        String password="123456";
        String s = MD5Utils.md5Encryption(password, salt);
        System.out.println("salt="+salt);
        System.out.println("password="+s);
    }
}
