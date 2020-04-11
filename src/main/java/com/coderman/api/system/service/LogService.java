package com.coderman.api.system.service;

import com.coderman.api.system.vo.LogVO;
import com.coderman.api.system.vo.PageVO;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.scheduling.annotation.Async;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.List;

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


    /**
     * 删除登入日志
     * @param id
     */
    void delete(Long id);


    /**
     * 登入日志列表
     * @param pageNum
     * @param pageSize
     * @param logVO
     * @return
     */
    PageVO<LogVO> findLogList(Integer pageNum, Integer pageSize, LogVO logVO);

    /**
     * 批量删除登入日志
     * @param list
     */
    void batchDelete(List<Long> list);
}
