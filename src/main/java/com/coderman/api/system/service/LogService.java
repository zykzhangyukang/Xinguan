package com.coderman.api.system.service;

import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.scheduling.annotation.Async;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;

/**
 * 系统日志
 * Created by zhangyukang on 2019/11/15 17:26
 */
public interface LogService  {

    /**
     * 异步保存操作日志
     *
     * @param point     切点
     * @param method    Method
     * @param request   HttpServletRequest
     * @param operation 操作内容
     * @param start     开始时间
     */
    @Async("CodeAsyncThreadPool")
    void saveLog(ProceedingJoinPoint point, Method method, HttpServletRequest request, String operation, long start);

}
