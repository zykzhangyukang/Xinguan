package com.coderman.api.system.controller;

import com.coderman.api.system.bean.ResponseBean;
import com.coderman.api.system.service.LoginLogService;
import com.coderman.api.system.vo.LoginLogVO;
import com.coderman.api.system.vo.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

/**
 * 登入日志
 * @Author zhangyukang
 * @Date 2020/3/22 21:03
 * @Version 1.0
 **/
@Api(tags = "登入日志接口")
@RestController
@RequestMapping("/loginLog")
public class LoginLogController {


    @Autowired
    private LoginLogService loginLogService;

    /**
     * 登入日志列表
     * @return
     */
    @ApiOperation(value = "日志列表",notes = "登入日志列表，模糊查询")
    @GetMapping("/findLoginLogList")
    public ResponseBean findLoginLogList(@RequestParam(value = "pageNum",defaultValue = "1") Integer pageNum,
                                           @RequestParam(value = "pageSize") Integer pageSize,
                                           LoginLogVO loginLogVO){
        PageVO<LoginLogVO> loginLogList= loginLogService.findLoginLogList(pageNum,pageSize,loginLogVO);
        return ResponseBean.success(loginLogList);
    }

    /**
     * 删除登入日志
     * @param id
     * @return
     */
    @ApiOperation(value = "删除日志")
    @RequiresPermissions({"loginLog:delete"})
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id){
        try {
            loginLogService.delete(id);
            return ResponseBean.success("删除登入日志成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseBean.error("删除登入日志失败");
        }
    }

    /**
     * 批量删除
     * @param ids
     * @return
     */
    @ApiOperation(value = "批量删除")
    @RequiresPermissions({"loginLog:batchDelete"})
    @DeleteMapping("/batchDelete/{ids}")
    public ResponseBean batchDelete(@PathVariable String ids){
        String[] idList= ids.split(",");
        List<Long> list=new ArrayList<>();
        if(idList.length>0){
            for (String s : idList) {
                list.add(Long.parseLong(s));
            }
        }
        try {
            loginLogService.batchDelete(list);
            return ResponseBean.success("批量删除登入日志成功");
        } catch (Exception e) {
            e.printStackTrace();
            return ResponseBean.error("批量删除登入日志失败");
        }
    }


}
