package com.coderman.api.biz.service;

import com.coderman.api.common.pojo.biz.Health;
import com.coderman.api.biz.vo.HealthVO;
import com.coderman.api.system.vo.PageVO;

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
    void report(HealthVO healthVO);

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
    PageVO<Health> history(Long id,Integer pageNum,Integer pageSize);
}
