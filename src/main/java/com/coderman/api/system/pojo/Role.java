package com.coderman.api.system.pojo;

import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Data
@Table(name = "tb_role")
public class Role {
    @Id
    private Long id;

    private String roleName;

    private String remark;

    private Date createTime;

    private Date modifiedTime;

    private Integer status;

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", roleName='" + roleName + '\'' +
                '}';
    }
}