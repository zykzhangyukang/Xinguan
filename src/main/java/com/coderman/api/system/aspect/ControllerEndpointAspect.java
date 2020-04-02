package com.coderman.api.system.aspect;

import com.coderman.api.system.annotation.ControllerEndpoint;
import com.coderman.api.system.bean.ResponseBean;
import com.coderman.api.system.service.LogService;
import org.apache.commons.lang3.StringUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;

/**
 * @author MrBird
 */
@Aspect
@Component
public class ControllerEndpointAspect extends AspectSupport {


    @Autowired
    private LogService logService;

    @Pointcut("@annotation(com.coderman.api.system.annotation.ControllerEndpoint)")
    public void pointcut() {
    }

    @Around("pointcut()")
    public Object around(ProceedingJoinPoint point)  {
        Object result;
        Method targetMethod = resolveMethod(point);
        ControllerEndpoint annotation = targetMethod.getAnnotation(ControllerEndpoint.class);
        String operation = annotation.operation();
        long start = System.currentTimeMillis();
        try {
            result = point.proceed();
            if (StringUtils.isNotBlank(operation)) {
                ServletRequestAttributes requestAttributes = (ServletRequestAttributes)
                        RequestContextHolder.getRequestAttributes();
                assert requestAttributes != null;
                HttpServletRequest request = requestAttributes.getRequest();
                logService.saveLog(point, targetMethod, request, operation, start);
            }
            return result;
        } catch (Throwable throwable) {
            String message = throwable.getMessage();
            return ResponseBean.error(message);
        }
    }
}



