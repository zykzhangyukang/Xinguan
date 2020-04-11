package com.coderman.api.system.service.impl;

import com.coderman.api.system.bean.ActiveUser;
import com.coderman.api.system.mapper.LogMapper;
import com.coderman.api.system.pojo.Log;
import com.coderman.api.system.pojo.LoginLog;
import com.coderman.api.system.pojo.User;
import com.coderman.api.system.service.LogService;
import com.coderman.api.system.util.AddressUtil;
import com.coderman.api.system.util.IPUtil;
import com.coderman.api.system.vo.LogVO;
import com.coderman.api.system.vo.LoginLogVO;
import com.coderman.api.system.vo.PageVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.shiro.SecurityUtils;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.LocalVariableTableParameterNameDiscoverer;
import org.springframework.stereotype.Service;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import javax.servlet.http.HttpServletRequest;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Date;
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

    @Override
    public void saveLog(ProceedingJoinPoint point, Method method, HttpServletRequest request, String operation, long start) {
        // 设置 IP地址
        Log systemLog = new Log();
        String ip = IPUtil.getIpAddr(request);
        systemLog.setIp(ip);
        // 设置操作用户
        ActiveUser activeUser= (ActiveUser) SecurityUtils.getSubject().getPrincipal();
        User user=activeUser.getUser();
        if (user != null)
            systemLog.setUsername(user.getUsername());
        // 设置耗时
        systemLog.setTime(System.currentTimeMillis() - start);
        // 设置操作描述
        systemLog.setOperation(operation);
        // 请求的类名
        String className = point.getTarget().getClass().getName();
        // 请求的方法名
        String methodName = method.getName();
        systemLog.setMethod(className + "." + methodName + "()");
        // 请求的方法参数值
        Object[] args = point.getArgs();
        // 请求的方法参数名称
        LocalVariableTableParameterNameDiscoverer u = new LocalVariableTableParameterNameDiscoverer();
        String[] paramNames = u.getParameterNames(method);
        systemLog.setParams("paramName:"+ Arrays.toString(paramNames) +",args:"+ Arrays.toString(args) +",role:"+activeUser.getRoles());
        systemLog.setCreateTime(new Date());
        systemLog.setLocation(AddressUtil.getCityInfo(IPUtil.getIpAddr(request)));
        logMapper.insert(systemLog);
    }

    @Override
    public void delete(Long id) {
        logMapper.deleteByPrimaryKey(id);
    }

    @Override
    public PageVO<LogVO> findLogList(Integer pageNum, Integer pageSize, LogVO logVO) {
        PageHelper.startPage(pageNum,pageSize);
        Example o = new Example(LoginLog.class);
        o.setOrderByClause("create_time desc");
        if(logVO.getLocation()!=null&&!"".equals(logVO.getLocation())){
            o.createCriteria().andLike("location","%"+logVO.getLocation()+"%");
        }
        if(logVO.getIp()!=null&&!"".equals(logVO.getIp())){
            o.createCriteria().andLike("ip","%"+logVO.getIp()+"%");
        }
        if(logVO.getUsername()!=null&&!"".equals(logVO.getUsername())){
            o.createCriteria().andLike("username","%"+logVO.getUsername()+"%");
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

    @Override
    public void batchDelete(List<Long> list) {
        for (Long id : list) {
            delete(id);
        }
    }
}
