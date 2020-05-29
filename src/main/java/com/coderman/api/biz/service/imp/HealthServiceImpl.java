package com.coderman.api.biz.service.imp;

import com.coderman.api.biz.mapper.HealthMapper;
import com.coderman.api.common.pojo.biz.Health;
import com.coderman.api.biz.service.HealthService;
import com.coderman.api.biz.vo.HealthVO;
import com.coderman.api.common.exception.ServiceException;
import com.coderman.api.system.vo.PageVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/5/7 10:21
 * @Version 1.0
 **/
@Service
public class HealthServiceImpl implements HealthService {

    @Autowired
    private HealthMapper healthMapper;

    /**
     * 健康上报
     * @param healthVO
     */
    @Override
    public void report(HealthVO healthVO) {
        Health health = new Health();
        BeanUtils.copyProperties(healthVO,health);
        health.setCreateTime(new Date());
        Health report = isReport(healthVO.getUserId());
        if(report!=null){
            throw new ServiceException("今日您已经打卡");
        }else {
            healthMapper.insert(health);
        }
    }

    /**
     * 今日是否已报备
     * @param id
     * @return
     */
    @Override
    public Health isReport(Long id) {

        List<Health> health=healthMapper.isReport(id);
        if(health.size()>0){
            return  health.get(0);
        }
        return null;
    }

    /**
     * 签到历史记录
     * @return
     */
    @Override
    public PageVO<Health> history(Long id,Integer pageNum,Integer pageSize) {
        Example o = new Example(Health.class);
        o.setOrderByClause("create_time desc");
        PageHelper.startPage(pageNum,pageSize);
        o.createCriteria().andEqualTo("userId",id);
        List<Health> health = healthMapper.selectByExample(o);
        PageInfo<Health> pageInfo=new PageInfo<>(health);
        PageVO<Health> pageVO=new PageVO<>(pageInfo.getTotal(),pageInfo.getList());
        return pageVO;
    }
}
