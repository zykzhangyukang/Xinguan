package com.coderman.controller.system;

import com.coderman.common.error.SystemException;
import com.coderman.common.response.ResponseBean;
import com.coderman.common.vo.system.LogVO;
import com.coderman.common.vo.system.PageVO;
import com.coderman.system.service.LogService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * 系统日志
 *
 * @Author zhangyukang
 * @Date 2020/3/22 21:03
 * @Version 1.0
 **/
@Api(tags = "系统模块-操作日志相关接口")
@RestController
@RequestMapping("/system/log")
public class LogController {


    @Autowired
    private LogService logService;

    /**
     * 日志列表
     *
     * @return
     */
    @ApiOperation(value = "日志列表", notes = "系统日志列表，模糊查询")
    @GetMapping("/findLogList")
    public ResponseBean<PageVO<LogVO>> findLogList(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                    @RequestParam(value = "pageSize") Integer pageSize,
                                    LogVO logVO) {
        PageVO<LogVO> logList = logService.findLogList(pageNum, pageSize, logVO);
        return ResponseBean.success(logList);
    }

    /**
     * 删除日志
     *
     * @param id
     * @return
     */
    @ApiOperation(value = "删除日志")
    @RequiresPermissions({"log:delete"})
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id) throws SystemException {
        logService.delete(id);
        return ResponseBean.success("删除系统日志成功");
    }

    /**
     * 批量删除
     *
     * @param ids
     * @return
     */
    @ApiOperation(value = "批量删除")
    @RequiresPermissions({"log:batchDelete"})
    @DeleteMapping("/batchDelete/{ids}")
    public ResponseBean batchDelete(@PathVariable String ids) throws SystemException {
        String[] idList = ids.split(",");
        List<Long> list = new ArrayList<>();
        if (idList.length > 0) {
            for (String s : idList) {
                list.add(Long.parseLong(s));
            }
        }
        logService.batchDelete(list);
        return ResponseBean.success("批量删除成功");
    }


}
