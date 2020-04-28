package com.coderman.api.system.service.impl;

import com.coderman.api.system.mapper.LoginLogMapper;
import com.coderman.api.system.pojo.LoginLog;
import com.coderman.api.system.service.LoginLogService;
import com.coderman.api.system.vo.LoginLogVO;
import com.coderman.api.system.vo.PageVO;
import com.coderman.api.system.vo.UserVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * @Author zhangyukang
 * @Date 2020/3/20 19:11
 * @Version 1.0
 **/
@Service
public class LoginLogServiceImpl implements LoginLogService {

    @Autowired
    private LoginLogMapper loginLogMapper;

    /**
     * 登入日志列表
     * @param pageNum
     * @param pageSize
     * @param loginLogVO
     * @return
     */
    @Override
    public PageVO<LoginLogVO> findLoginLogList(Integer pageNum, Integer pageSize, LoginLogVO loginLogVO) {
        PageHelper.startPage(pageNum,pageSize);
        Example o = new Example(LoginLog.class);
        o.setOrderByClause("login_time desc");
        if(loginLogVO.getLocation()!=null&&!"".equals(loginLogVO.getLocation())){
            o.createCriteria().andLike("location","%"+loginLogVO.getLocation()+"%");
        }
        if(loginLogVO.getIp()!=null&&!"".equals(loginLogVO.getIp())){
            o.createCriteria().andLike("ip","%"+loginLogVO.getIp()+"%");
        }
        if(loginLogVO.getUsername()!=null&&!"".equals(loginLogVO.getUsername())){
            o.createCriteria().andLike("username","%"+loginLogVO.getUsername()+"%");
        }
        List<LoginLog> loginLogs = loginLogMapper.selectByExample(o);
        List<LoginLogVO> loginLogVOS=new ArrayList<>();
        if(!CollectionUtils.isEmpty(loginLogs)){
            for (LoginLog loginLog : loginLogs) {
                LoginLogVO logVO = new LoginLogVO();
                BeanUtils.copyProperties(loginLog,logVO);
                loginLogVOS.add(logVO);
            }
        }
        PageInfo<LoginLog> info=new PageInfo<>(loginLogs);
        return new PageVO<>(info.getTotal(),loginLogVOS);
    }

    /**
     * 批量删除日志
     * @param list
     */
    @Override
    public void batchDelete(List<Long> list) {
        for (Long id : list) {
            delete(id);
        }
    }

    /**
     * 登入报表
     * @param userVO
     * @return
     */
    @Override
    public List<Map<String, Object>> loginReport(UserVO userVO) {
        return loginLogMapper.userLoginReport(userVO);
    }

    /**
     * 插入登入日志
     * @param loginLog
     */
    @Override
    public void add(LoginLog loginLog) {
        loginLogMapper.insert(loginLog);
    }

    /**
     * 删除登入日志
     * @param id
     */
    @Override
    public void delete(Long id) {
        loginLogMapper.deleteByPrimaryKey(id);
    }

}
