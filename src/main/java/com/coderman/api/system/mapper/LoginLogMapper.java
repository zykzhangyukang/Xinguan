package com.coderman.api.system.mapper;

import com.coderman.api.common.pojo.system.LoginLog;
import com.coderman.api.system.vo.UserVO;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;
import java.util.Map;

/**
 * @Author zhangyukang
 * @Date 2020/3/20 19:09
 * @Version 1.0
 **/
public interface LoginLogMapper extends Mapper<LoginLog> {

    /**
     * 用户登入报表
     * @param userVO
     * @return
     */
    List<Map<String,Object>> userLoginReport(UserVO userVO);

}
