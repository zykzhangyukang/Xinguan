package com.coderman.api.system.test;

import com.coderman.api.system.mapper.LoginLogMapper;
import com.coderman.api.system.mapper.UserMapper;
import com.coderman.api.common.pojo.system.User;
import com.coderman.api.system.vo.UserVO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.List;
import java.util.Map;

/**
 * @Author zhangyukang
 * @Date 2020/3/7 15:38
 * @Version 1.0
 **/
@SpringBootTest
@RunWith(SpringRunner.class)
public class UserMapperTest {

    @Autowired
    private LoginLogMapper loginLogMapper;

    @Autowired
    private UserMapper userMapper;

    @Test
    public void test(){
        List<User> users = userMapper.selectAll();
        System.out.println(users);
    }

    @Test
    public void  testUserLoginReport(){
        List<Map<String,Object>> map = loginLogMapper.userLoginReport(new UserVO());
        System.out.println(map);
    }

}
