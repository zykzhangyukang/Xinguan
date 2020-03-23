package com.coderman.api.biz.test;

import com.coderman.api.biz.utils.CommonFileUtil;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.io.File;
import java.io.IOException;

/**
 * @Author zhangyukang
 * @Date 2020/3/18 15:02
 * @Version 1.0
 **/
@SpringBootTest
@RunWith(SpringRunner.class)
public class FastDFSTest {

    @Autowired
    private CommonFileUtil commonFileUtil;

    @Test
    public void testupload(){
        try {
            String s = commonFileUtil.uploadFile(new File("C:\\Users\\Administrator\\Desktop\\vue_permission.sql"));
            System.out.println(s);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
    @Test
    public void testDelete(){
        commonFileUtil.deleteFile("/group1/M00/00/00/rBofMl5x0DqAKtcnAAGYhYdTlnI645.sql");
    }
}
