package com.coderman.business.service;


import com.coderman.common.error.BusinessException;
import com.coderman.common.model.business.Health;
import com.coderman.common.vo.business.HealthVO;
import com.coderman.common.vo.system.PageVO;

/**
 * @Author zhangyukang
 * @Date 2020/5/7 10:20
 * @Version 1.0
 **/
public interface HealthService {

    /**
     * 健康上报
     * @param healthVO
     */
    void report(HealthVO healthVO) throws BusinessException;

    /**
     * 今日是否已经报备
     * @param id
     * @return
     */
    Health isReport(Long id);

    /**
     * 签到记录
     * @return
     */
    PageVO<Health> history(Long id, Integer pageNum, Integer pageSize);
}
