package com.coderman.business.mapper;

import com.coderman.common.model.business.Health;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import tk.mybatis.mapper.common.Mapper;

import java.util.List;

/**
 * @Author zhangyukang
 * @Date 2020/5/7 10:16
 * @Version 1.0
 **/
public interface HealthMapper extends Mapper<Health> {
    /**
     * 今日是否打卡
     * @param id
     * @return
     */
    @Select("select * from biz_health where create_time < (CURDATE()+1) " +
            " and create_time>CURDATE() and user_id=#{id}")
    List<Health> isReport(@Param("id") Long id);
}
