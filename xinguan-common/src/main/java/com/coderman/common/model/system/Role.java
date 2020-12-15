package com.coderman.common.model.system;

import com.wuwenze.poi.annotation.Excel;
import com.wuwenze.poi.annotation.ExcelField;
import lombok.Data;

import javax.persistence.Id;
import javax.persistence.Table;
import java.util.Date;

@Excel(value = "角色表格")
@Data
@Table(name = "tb_role")
public class Role {
    @Id
    @ExcelField(value = "编号", width = 50)
    private Long id;

    @ExcelField(value = "角色名称", width = 100)
    private String roleName;

    @ExcelField(value = "备注信息", width = 180)
    private String remark;

    @ExcelField(value = "创建时间", dateFormat = "yyyy年MM月dd日 HH:mm:ss", width = 180)
    private Date createTime;

    @ExcelField(value = "修改时间", dateFormat = "yyyy年MM月dd日 HH:mm:ss", width = 180)
    private Date modifiedTime;

    @ExcelField(value = "禁用状态", width = 50)
    private Integer status;

    @Override
    public String toString() {
        return "Role{" +
                "id=" + id +
                ", roleName='" + roleName + '\'' +
                '}';
    }
}
