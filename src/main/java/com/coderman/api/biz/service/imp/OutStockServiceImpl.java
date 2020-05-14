package com.coderman.api.biz.service.imp;

import com.coderman.api.biz.converter.ConsumerConverter;
import com.coderman.api.biz.converter.OutStockConverter;
import com.coderman.api.biz.mapper.OutStockMapper;
import com.coderman.api.biz.pojo.InStock;
import com.coderman.api.biz.pojo.OutStock;
import com.coderman.api.biz.service.OutStockService;
import com.coderman.api.biz.vo.InStockVO;
import com.coderman.api.biz.vo.OutStockVO;
import com.coderman.api.system.vo.PageVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tk.mybatis.mapper.entity.Example;

import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/5/10 14:26
 * @Version 1.0
 **/
@Service
public class OutStockServiceImpl implements OutStockService {

    @Autowired
    private OutStockMapper outStockMapper;

    @Autowired
    private OutStockConverter outStockConverter;

    /**
     * 入库单列表
     * @param pageNum
     * @param pageSize
     * @param outStockVO
     * @return
     */
    @Override
    public PageVO<OutStockVO> findOutStockList(Integer pageNum, Integer pageSize, OutStockVO outStockVO) {
        PageHelper.startPage(pageNum,pageSize);
        Example o = new Example(OutStock.class);
        Example.Criteria criteria = o.createCriteria();
        o.setOrderByClause("create_time desc");
        if(outStockVO.getOutNum()!=null&&!"".equals(outStockVO.getOutNum())){
            criteria.andLike("outNum","%"+outStockVO.getOutNum()+"%");
        }
        if(outStockVO.getType()!=null){
            criteria.andEqualTo("type",outStockVO.getType());
        }
        if(outStockVO.getStatus()!=null){
            criteria.andEqualTo("status",outStockVO.getStatus());
        }

        List<OutStock> outStocks = outStockMapper.selectByExample(o);
        List<OutStockVO> outStockVOS=outStockConverter.converterToVOList(outStocks);
        PageInfo<OutStock> outStockPageInfo = new PageInfo<>(outStocks);
        return new PageVO<>(outStockPageInfo.getTotal(),outStockVOS);
    }
}
