package com.coderman.business.service.imp;

import com.coderman.business.converter.ConsumerConverter;
import com.coderman.business.mapper.ConsumerMapper;
import com.coderman.business.service.ConsumerService;
import com.coderman.common.model.business.Consumer;
import com.coderman.common.vo.business.ConsumerVO;
import com.coderman.common.vo.system.PageVO;
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
 * @Date 2020/3/16 17:19
 * @Version 1.0
 **/
@Service
public class ConsumerServiceImpl implements ConsumerService {


    @Autowired
    private ConsumerMapper consumerMapper;

    /**
     * 供应商列表
     * @param pageNum
     * @param pageSize
     * @param consumerVO
     * @return
     */
    @Override
    public PageVO<ConsumerVO> findConsumerList(Integer pageNum, Integer pageSize, ConsumerVO consumerVO) {
        PageHelper.startPage(pageNum, pageSize);
        Example o = new Example(Consumer.class);
        Example.Criteria criteria = o.createCriteria();
        o.setOrderByClause("sort asc");
        if (consumerVO.getName() != null && !"".equals(consumerVO.getName())) {
            criteria.andLike("name", "%" + consumerVO.getName() + "%");
        }
        if (consumerVO.getAddress() != null && !"".equals(consumerVO.getAddress())) {
            criteria.andLike("address", "%" + consumerVO.getAddress() + "%");
        }
        if (consumerVO.getContact() != null && !"".equals(consumerVO.getContact())) {
            criteria.andLike("contact", "%" + consumerVO.getContact() + "%");
        }
        List<Consumer> consumers = consumerMapper.selectByExample(o);
        List<ConsumerVO> categoryVOS= ConsumerConverter.converterToVOList(consumers);
        PageInfo<Consumer> info = new PageInfo<>(consumers);
        return new PageVO<>(info.getTotal(), categoryVOS);
    }



    /**
     * 添加供应商
     * @param ConsumerVO
     */
    @Override
    public Consumer add(ConsumerVO ConsumerVO) {
        Consumer consumer = new Consumer();
        BeanUtils.copyProperties(ConsumerVO,consumer);
        consumer.setCreateTime(new Date());
        consumer.setModifiedTime(new Date());
        consumerMapper.insert(consumer);
        return consumer;
    }

    /**
     * 编辑供应商
     * @param id
     * @return
     */
    @Override
    public ConsumerVO edit(Long id) {
        Consumer consumer = consumerMapper.selectByPrimaryKey(id);
        return  ConsumerConverter.converterToConsumerVO(consumer);
    }

    /**
     * 更新供应商
     * @param id
     * @param ConsumerVO
     */
    @Override
    public void update(Long id, ConsumerVO ConsumerVO) {
        Consumer consumer = new Consumer();
        BeanUtils.copyProperties(ConsumerVO,consumer);
        consumer.setModifiedTime(new Date());
        consumerMapper.updateByPrimaryKeySelective(consumer);
    }

    /**
     * 删除供应商
     * @param id
     */
    @Override
    public void delete(Long id) {
        consumerMapper.deleteByPrimaryKey(id);
    }

    /**
     * 查询所有
     * @return
     */
    @Override
    public List<ConsumerVO> findAll() {
        List<Consumer> consumers = consumerMapper.selectAll();
        return ConsumerConverter.converterToVOList(consumers);
    }

}
