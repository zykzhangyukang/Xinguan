package com.coderman.system.service;


import com.coderman.common.error.SystemException;
import com.coderman.common.vo.system.LoginLogVO;
import com.coderman.common.vo.system.PageVO;
import com.coderman.common.vo.system.UserVO;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
import java.util.Map;

/**
 * @Author zhangyukang
 * @Date 2020/3/20 19:10
 * @Version 1.0
 **/
public interface LoginLogService {

    /**
     * 添加登入日志
     * @param request
     */
    void add(HttpServletRequest request);


    /**
     * 删除登入日志
     * @param id
     */
    void delete(Long id) throws SystemException;


    /**
     * 登入日志列表
     * @param pageNum
     * @param pageSize
     * @param loginLogVO
     * @return
     */
    PageVO<LoginLogVO> findLoginLogList(Integer pageNum, Integer pageSize, LoginLogVO loginLogVO);

    /**
     * 批量删除登入日志
     * @param list
     */
    void batchDelete(List<Long> list) throws SystemException;

    /**
     * 用户登入报表
     * @param userVO
     * @return
     */
    List<Map<String, Object>> loginReport(UserVO userVO);
}
