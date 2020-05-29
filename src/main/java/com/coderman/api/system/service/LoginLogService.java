package com.coderman.api.system.service;

import com.coderman.api.system.vo.LoginLogVO;
import com.coderman.api.system.vo.PageVO;
import com.coderman.api.system.vo.UserVO;

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
    void delete(Long id);


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
    void batchDelete(List<Long> list);

    /**
     * 用户登入报表
     * @param userVO
     * @return
     */
    List<Map<String, Object>> loginReport(UserVO userVO);
}
