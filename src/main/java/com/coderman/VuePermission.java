package com.coderman;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import tk.mybatis.spring.annotation.MapperScan;

@EnableTransactionManagement
@ComponentScan("com.coderman.*")
@MapperScan("com.coderman.api.*.mapper")
@SpringBootApplication
public class VuePermission {

    public static void main(String[] args) {
        SpringApplication.run(VuePermission.class, args);
    }

}
