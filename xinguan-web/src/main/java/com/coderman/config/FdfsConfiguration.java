package com.coderman.config;

import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.EnableMBeanExport;
import org.springframework.jmx.support.RegistrationPolicy;

/**
 * @Author zhangyukang
 * @Date 2020/8/9 11:49
 * @Version 1.0
 **/
@Configuration
@EnableMBeanExport(registration= RegistrationPolicy.IGNORE_EXISTING)
public class FdfsConfiguration {

}
