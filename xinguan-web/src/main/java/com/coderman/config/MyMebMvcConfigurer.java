package com.coderman.configurer;

import com.coderman.error.BusinessException;
import com.coderman.respone.ApiResponse;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpStatus;
import org.springframework.web.servlet.HandlerExceptionResolver;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.NoHandlerFoundException;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/12/13 13:48
 * @Version 1.0
 **/
@Configuration
public class MyMebMvcConfigurer implements WebMvcConfigurer {

    private Logger logger = LoggerFactory.getLogger(this.getClass());

    @Override
    public void configureHandlerExceptionResolvers(List<HandlerExceptionResolver> resolvers) {
        resolvers.add((httpServletRequest, httpServletResponse, o, e) -> {
            ApiResponse<Object> result;
            HashMap<String, Object> errorData = new HashMap<>();
            logger.info("请求错误，url:{}", httpServletRequest.getRequestURL());
            if (e instanceof BusinessException) {
                BusinessException businessException = (BusinessException) e;
                logger.info("业务异常-错误码：{},错误信息:{}", businessException.getErrorCode(), businessException.getErrorMessage());
                errorData.put("errorCode", businessException.getErrorCode());
                errorData.put("errorMessage", businessException.getErrorMessage());
            }else if(e instanceof NoHandlerFoundException){
                logger.error("接口不存在-错误码：{},错误信息:{}", HttpStatus.NOT_FOUND.value(),e.getMessage());
                errorData.put("errorCode", HttpStatus.NOT_FOUND.value());
                errorData.put("errorMessage", "API接口:["+httpServletRequest.getServletPath()+"]不存在");
            } else {
                logger.error("系统异常-错误码：{},错误信息:{}", HttpStatus.INTERNAL_SERVER_ERROR.value(),e.getMessage(),e);
                errorData.put("errorCode", HttpStatus.INTERNAL_SERVER_ERROR.value());
                errorData.put("errorMessage", "服务器异常，请联系管理员");
            }
            result = ApiResponse.fail(errorData);
            responseResult(httpServletResponse, result);
            return new ModelAndView();
        });
    }


    /**
     * <h2>响应结果</h2>
     *
     * @param response
     * @param result
     */
    private void responseResult(HttpServletResponse response, ApiResponse<Object> result) {
        response.setCharacterEncoding("UTF-8");
        response.setHeader("Content-type", "application/json;charset=UTF-8");
        response.setStatus(HttpStatus.OK.value());
        try {
            ObjectMapper  objectMapper=new ObjectMapper();
            response.getWriter().write(objectMapper.writeValueAsString(result));
        } catch (IOException ex) {
            logger.error(ex.getMessage());
        }
    }


}
