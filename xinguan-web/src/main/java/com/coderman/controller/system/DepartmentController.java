package com.coderman.controller.system;

import com.coderman.common.annotation.ControllerEndpoint;
import com.coderman.common.error.SystemException;
import com.coderman.common.model.system.Department;
import com.coderman.common.response.ResponseBean;
import com.coderman.common.vo.system.DeanVO;
import com.coderman.common.vo.system.DepartmentVO;
import com.coderman.common.vo.system.PageVO;
import com.coderman.system.service.DepartmentService;
import com.wuwenze.poi.ExcelKit;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * 部门管理
 *
 * @Author zhangyukang
 * @Date 2020/3/15 14:11
 * @Version 1.0
 **/
@Api(tags = "系统模块-部门相关接口")
@RestController
@RequestMapping("/system/department")
public class DepartmentController {


    @Autowired
    private DepartmentService departmentService;

    /**
     * 部门列表
     *
     * @return
     */
    @ApiOperation(value = "部门列表", notes = "部门列表,根据部门名模糊查询")
    @GetMapping("/findDepartmentList")
    public ResponseBean<PageVO<DepartmentVO>> findDepartmentList(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                           @RequestParam(value = "pageSize") Integer pageSize,
                                           DepartmentVO departmentVO) {
        PageVO<DepartmentVO> departmentsList = departmentService.findDepartmentList(pageNum, pageSize, departmentVO);
        return ResponseBean.success(departmentsList);
    }

    /**
     * 所有部门
     *
     * @return
     */
    @ApiOperation(value = "所有部门")
    @GetMapping("/findAll")
    public ResponseBean<List<DepartmentVO>> findAll() {
        List<DepartmentVO> departmentVOS = departmentService.findAllVO();
        return ResponseBean.success(departmentVOS);
    }

    /**
     * 查找部门主任
     *
     * @return
     */
    @ApiOperation(value = "部门主任", notes = "查找部门主任,排除掉已经禁用的用户")
    @GetMapping("/findDeanList")
    public ResponseBean<List<DeanVO>> findDeanList() {
        List<DeanVO> managerList = departmentService.findDeanList();
        return ResponseBean.success(managerList);
    }

    /**
     * 添加部门
     *
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "添加部门失败", operation = "添加部门")
    @RequiresPermissions({"department:add"})
    @ApiOperation(value = "添加部门")
    @PostMapping("/add")
    public ResponseBean add(@RequestBody @Validated DepartmentVO departmentVO) {
        departmentService.add(departmentVO);
        return ResponseBean.success();
    }

    /**
     * 编辑部门
     *
     * @param id
     * @return
     */
    @ApiOperation(value = "编辑部门")
    @RequiresPermissions({"department:edit"})
    @GetMapping("/edit/{id}")
    public ResponseBean edit(@PathVariable Long id) throws SystemException {
        DepartmentVO departmentVO = departmentService.edit(id);
        return ResponseBean.success(departmentVO);
    }

    /**
     * 更新部门
     *
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "更新部门失败", operation = "更新部门")
    @ApiOperation(value = "更新部门")
    @RequiresPermissions({"department:update"})
    @PutMapping("/update/{id}")
    public ResponseBean update(@PathVariable Long id, @RequestBody @Validated DepartmentVO departmentVO) throws SystemException {
        departmentService.update(id, departmentVO);
        return ResponseBean.success();
    }

    /**
     * 删除部门
     *
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "删除部门失败", operation = "删除部门")
    @ApiOperation(value = "删除部门")
    @RequiresPermissions({"department:delete"})
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id) throws SystemException {
        departmentService.delete(id);
        return ResponseBean.success();
    }

    /**
     * 导出excel
     * @param response
     */
    @ApiOperation(value = "导出excel", notes = "导出所有部门的excel表格")
    @PostMapping("/excel")
    @RequiresPermissions("department:export")
    @ControllerEndpoint(exceptionMessage = "导出Excel失败",operation = "导出部门excel")
    public void export(HttpServletResponse response) {
        List<Department> departments = this.departmentService.findAll();
        ExcelKit.$Export(Department.class, response).downXlsx(departments, false);
    }

}
