package com.coderman.api.biz.vo;

import lombok.Data;

/**
 * @Author zhangyukang
 * @Date 2020/5/25 16:26
 * @Version 1.0
 **/
@Data
public class OutStockItemVO {

    private Long id;

    private String pNum;

    private String name;

    private String model;

    private String unit;

    private String imageUrl;

    private int count;

}
