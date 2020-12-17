package com.coderman.controller.business;

import com.coderman.business.service.HealthService;
import com.coderman.common.annotation.ControllerEndpoint;
import com.coderman.common.error.BusinessException;
import com.coderman.common.model.business.Health;
import com.coderman.common.response.ActiveUser;
import com.coderman.common.response.ResponseBean;
import com.coderman.common.vo.business.HealthVO;
import com.coderman.common.vo.system.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.SecurityUtils;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * @Author zhangyukang
 * @Date 2020/5/7 10:14
 * @Version 1.0
 **/
@Api(tags = "业务模块-健康上报相关接口")
@RestController
@RequestMapping("/business/health")
public class HealthController {

    @Autowired
    private HealthService healthService;

    /**
     * 健康上报
     * @param healthVO
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "健康上报失败", operation = "健康上报")
    @ApiOperation(value = "健康上报",notes = "用户健康上报")
    @RequiresPermissions({"health:report"})
    @PostMapping("/report")
    public ResponseBean report(@Validated @RequestBody HealthVO healthVO) throws BusinessException {
        ActiveUser activeUser = (ActiveUser) SecurityUtils.getSubject().getPrincipal();
        healthVO.setUserId(activeUser.getUser().getId());
        healthService.report(healthVO);
        return ResponseBean.success();
    }

    /**
     * 签到记录
     * @return
     */
    @ApiOperation(value = "健康记录",notes = "用户健康上报历史记录")
    @GetMapping("/history")
    public ResponseBean history(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                @RequestParam(value = "pageSize") Integer pageSize){
        ActiveUser activeUser= (ActiveUser) SecurityUtils.getSubject().getPrincipal();
        Long id = activeUser.getUser().getId();
        PageVO<Health> Health=healthService.history(id,pageNum,pageSize);
        return ResponseBean.success(Health);
    }

    /**
     * 今日是否已报备
     * @return
     */
    @ApiOperation(value = "是否报备",notes = "今日是否已报备")
    @GetMapping("/isReport")
    public ResponseBean isReport(){
        ActiveUser activeUser = (ActiveUser) SecurityUtils.getSubject().getPrincipal();
        Health report = healthService.isReport(activeUser.getUser().getId());
        return ResponseBean.success(report);
    }

}
