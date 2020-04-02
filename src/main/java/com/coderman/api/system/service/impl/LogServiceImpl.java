package com.coderman.api.system.service.impl;

import com.coderman.api.system.bean.ActiveUser;
import com.coderman.api.system.mapper.LogMapper;
import com.coderman.api.system.pojo.Log;
import com.coderman.api.system.pojo.User;
import com.coderman.api.system.service.LogService;
import com.coderman.api.system.util.AddressUtil;
import com.coderman.api.system.util.IPUtil;
import org.apache.shiro.SecurityUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.LocalVariableTableParameterNameDiscoverer;
import org.springframework.stereotype.Service;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.Arrays;
import java.util.Date;

/**
 * @Author zhangyukang
 * @Date 2020/4/2 20:24
 * @Version 1.0
 **/
@Service
public class LogServiceImpl implements LogService {

    @Autowired
    private LogMapper logMapper;

    @Override
    public void saveLog(ProceedingJoinPoint point, Method method, HttpServletRequest request, String operation, long start) {
        // 设置 IP地址
        Log systemLog = new Log();
        String ip = IPUtil.getIpAddr(request);
        systemLog.setIp(ip);
        // 设置操作用户
        ActiveUser activeUser= (ActiveUser) SecurityUtils.getSubject().getPrincipal();
        User user=activeUser.getUser();
        if (user != null)
            systemLog.setUsername(user.getUsername());
        // 设置耗时
        systemLog.setTime(System.currentTimeMillis() - start);
        // 设置操作描述
        systemLog.setOperation(operation);
        // 请求的类名
        String className = point.getTarget().getClass().getName();
        // 请求的方法名
        String methodName = method.getName();
        systemLog.setMethod(className + "." + methodName + "()");
        // 请求的方法参数值
        Object[] args = point.getArgs();
        // 请求的方法参数名称
        LocalVariableTableParameterNameDiscoverer u = new LocalVariableTableParameterNameDiscoverer();
        String[] paramNames = u.getParameterNames(method);
        systemLog.setParams("paramName:"+ Arrays.toString(paramNames) +",args:"+ Arrays.toString(args) +",role:"+activeUser.getRoles());
        systemLog.setCreateTime(new Date());
        systemLog.setLocation(AddressUtil.getCityInfo(IPUtil.getIpAddr(request)));
        logMapper.insert(systemLog);
    }
}
