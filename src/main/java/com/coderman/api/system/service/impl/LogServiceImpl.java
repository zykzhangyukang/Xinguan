package com.coderman.api.system.service.impl;

import com.coderman.api.common.exception.ServiceException;
import com.coderman.api.common.pojo.system.Log;
import com.coderman.api.common.pojo.system.LoginLog;
import com.coderman.api.system.mapper.LogMapper;
import com.coderman.api.system.service.LogService;
import com.coderman.api.system.vo.LogVO;
import com.coderman.api.system.vo.PageVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/4/2 20:24
 * @Version 1.0
 **/
@Service
public class LogServiceImpl implements LogService {

    @Autowired
    private LogMapper logMapper;

    /**
     * 保存登入日志
     * @param log
     */
    @Override
    public void saveLog(Log log) {
        logMapper.insert(log);
    }


    /**
     * 删除操作日志
     * @param id
     */
    @Override
    public void delete(Long id) {
        Log log = logMapper.selectByPrimaryKey(id);
        if(log==null){
            throw new ServiceException("要删除的操作日志不存在");
        }
        logMapper.deleteByPrimaryKey(id);
    }


    @Override
    public PageVO<LogVO> findLogList(Integer pageNum, Integer pageSize, LogVO logVO) {
        PageHelper.startPage(pageNum,pageSize);
        Example o = new Example(LoginLog.class);
        Example.Criteria criteria = o.createCriteria();
        o.setOrderByClause("create_time desc");
        if(logVO.getLocation()!=null&&!"".equals(logVO.getLocation())){
            criteria.andLike("location","%"+logVO.getLocation()+"%");
        }
        if(logVO.getIp()!=null&&!"".equals(logVO.getIp())){
            criteria.andLike("ip","%"+logVO.getIp()+"%");
        }
        if(logVO.getUsername()!=null&&!"".equals(logVO.getUsername())){
            criteria.andLike("username","%"+logVO.getUsername()+"%");
        }
        List<Log> loginLogs = logMapper.selectByExample(o);
        List<LogVO> logVOS=new ArrayList<>();
        if(!CollectionUtils.isEmpty(loginLogs)){
            for (Log loginLog : loginLogs) {
                LogVO logVO1 = new LogVO();
                BeanUtils.copyProperties(loginLog,logVO1);
                logVOS.add(logVO1);
            }
        }
        PageInfo<Log> info=new PageInfo<>(loginLogs);
        return new PageVO<>(info.getTotal(),logVOS);
    }

    /**
     * 批量删除
     * @param list
     */
    @Override
    public void batchDelete(List<Long> list) {
        for (Long id : list) {
            Log log = logMapper.selectByPrimaryKey(id);
            if(log==null){
                throw new ServiceException("id="+id+",操作日志不存在");
            }
            delete(id);
        }
    }
}
