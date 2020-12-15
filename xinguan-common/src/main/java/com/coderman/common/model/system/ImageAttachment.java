package com.coderman.common.model.system;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "tb_image")
public class ImageAttachment {

    @Id
    private Long id;

    private String path;

    private Long size;

    private String mediaType;

    private String suffix;

    private Integer height;

    private Integer width;

    private Date createTime;

}
