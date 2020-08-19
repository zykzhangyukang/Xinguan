package com.coderman.api.system.service;

import com.coderman.api.common.pojo.system.User;
import lombok.extern.slf4j.Slf4j;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;

/**
 * @Author zhangyukang
 * @Date 2020/8/19 14:42
 * @Version 1.0
 **/
@SpringBootTest
@Slf4j
class UserServiceTest {

    @Autowired
    private UserService userService;

    @Test
    void findUserByName() {
        User user = userService.findUserByName("admin");
        log.info("user={}",user);
    }

}
