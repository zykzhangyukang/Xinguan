package com.coderman.controller.business;

import com.coderman.business.service.ConsumerService;
import com.coderman.common.annotation.ControllerEndpoint;
import com.coderman.common.response.ResponseBean;
import com.coderman.common.vo.business.ConsumerVO;
import com.coderman.common.vo.system.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 去向管理
 *
 * @Author zhangyukang
 * @Date 2020/3/16 20:18
 * @Version 1.0
 **/
@Api(tags = "业务模块-物资去向相关接口")
@RestController
@RequestMapping("/business/consumer")
public class ConsumerController {


    @Autowired
    private ConsumerService consumerService;

    /**
     * 去向列表
     *
     * @return
     */
    @ApiOperation(value = "去向列表", notes = "去向列表,根据去向名模糊查询")
    @GetMapping("/findConsumerList")
    public ResponseBean findConsumerList(@RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                                         @RequestParam(value = "pageSize") Integer pageSize,
                                         ConsumerVO consumerVO) {
        PageVO<ConsumerVO> consumerVOPageVO = consumerService.findConsumerList(pageNum, pageSize, consumerVO);
        return ResponseBean.success(consumerVOPageVO);
    }

    /**
     * 添加去向
     *
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "物资去向添加失败", operation = "物资去向添加")
    @RequiresPermissions({"consumer:add"})
    @ApiOperation(value = "添加去向")
    @PostMapping("/add")
    public ResponseBean add(@RequestBody @Validated ConsumerVO consumerVO) {
        consumerService.add(consumerVO);
        return ResponseBean.success();
    }

    /**
     * 编辑去向
     *
     * @param id
     * @return
     */
    @ApiOperation(value = "编辑去向", notes = "编辑去向信息")
    @RequiresPermissions({"consumer:edit"})
    @GetMapping("/edit/{id}")
    public ResponseBean edit(@PathVariable Long id) {
        ConsumerVO consumerVO = consumerService.edit(id);
        return ResponseBean.success(consumerVO);
    }

    /**
     * 更新去向
     *
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "物资去向更新失败", operation = "物资去向更新")
    @ApiOperation(value = "更新去向", notes = "更新去向信息")
    @RequiresPermissions({"consumer:update"})
    @PutMapping("/update/{id}")
    public ResponseBean update(@PathVariable Long id, @RequestBody @Validated ConsumerVO consumerVO) {
        consumerService.update(id, consumerVO);
        return ResponseBean.success();
    }

    /**
     * 删除去向
     *
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "物资去向删除失败", operation = "物资去向删除")
    @ApiOperation(value = "删除去向", notes = "删除去向信息")
    @RequiresPermissions({"consumer:delete"})
    @DeleteMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id) {
        consumerService.delete(id);
        return ResponseBean.success();
    }

    /**
     * 所有去向
     *
     * @return
     */
    @ApiOperation(value = "所有去向", notes = "所有去向列表")
    @GetMapping("/findAll")
    public ResponseBean findAll() {
        List<ConsumerVO> consumerVOS = consumerService.findAll();
        return ResponseBean.success(consumerVOS);
    }
}
