package com.coderman.common.annotation;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;


/**
 * 自定义注解,用于标注在controller的方法上,异步记录日志
 * create by zhangyukang
 */
@Target(ElementType.METHOD)
@Retention(RetentionPolicy.RUNTIME)
public @interface ControllerEndpoint {

    String operation() default "";
    String exceptionMessage() default "系统内部异常";
}
