package com.coderman.api.biz.converter;

import com.coderman.api.biz.mapper.ConsumerMapper;
import com.coderman.api.common.pojo.biz.Consumer;
import com.coderman.api.common.pojo.biz.OutStock;
import com.coderman.api.biz.vo.OutStockVO;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.CollectionUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/5/10 14:32
 * @Version 1.0
 **/
@Component
public class OutStockConverter {

    @Autowired
    private ConsumerMapper consumerMapper;

    /**
     * 转voList
     * @param outStocks
     * @return
     */
    public  List<OutStockVO> converterToVOList(List<OutStock> outStocks) {
        List<OutStockVO> outStockVOS=new ArrayList<>();
        if(!CollectionUtils.isEmpty(outStocks)){
            for (OutStock outStock : outStocks) {
                OutStockVO outStockVO = new OutStockVO();
                BeanUtils.copyProperties(outStock,outStockVO);
                Consumer consumer = consumerMapper.selectByPrimaryKey(outStock.getConsumerId());
                if(consumer!=null){
                    outStockVO.setName(consumer.getName());
                    outStockVO.setPhone(consumer.getPhone());
                }
                outStockVOS.add(outStockVO);
            }
        }
        return outStockVOS;
    }
}
