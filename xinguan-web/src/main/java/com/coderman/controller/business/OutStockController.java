package com.coderman.controller.business;

import com.coderman.business.service.ConsumerService;
import com.coderman.business.service.OutStockService;
import com.coderman.common.annotation.ControllerEndpoint;
import com.coderman.common.error.BusinessCodeEnum;
import com.coderman.common.error.BusinessException;
import com.coderman.common.model.business.Consumer;
import com.coderman.common.response.ResponseBean;
import com.coderman.common.vo.business.ConsumerVO;
import com.coderman.common.vo.business.OutStockDetailVO;
import com.coderman.common.vo.business.OutStockVO;
import com.coderman.common.vo.system.PageVO;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

/**
 * 出库单
 * @Author zhangyukang
 * @Date 2020/5/10 14:23
 * @Version 1.0
 **/
@Api(tags = "业务模块-物资出库相关接口")
@RestController
@RequestMapping("/business/outStock")
public class OutStockController {

    @Autowired
    private OutStockService outStockService;


    @Autowired
    private ConsumerService consumerService;

    /**
     * 提交物资发放单
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "发放单申请失败", operation = "发放单申请")
    @ApiOperation("提交发放单")
    @PostMapping("/addOutStock")
    @RequiresPermissions({"outStock:out"})
    public ResponseBean addOutStock(@RequestBody @Validated OutStockVO outStockVO) throws BusinessException {
        if(outStockVO.getConsumerId()==null){
            //说明现在添加物资来源
            ConsumerVO consumerVO = new ConsumerVO();
            BeanUtils.copyProperties(outStockVO,consumerVO);
            if("".equals(consumerVO.getName())||consumerVO.getName()==null){
                throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"物资去向名不能为空");
            }
            if("".equals(consumerVO.getContact())||consumerVO.getContact()==null){
                throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"联系人不能为空");
            }
            if("".equals(consumerVO.getAddress())||consumerVO.getAddress()==null){
                throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"地址不能为空");
            }
            if("".equals(consumerVO.getPhone())||consumerVO.getPhone()==null){
                throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"联系方式不能为空");
            }
            if(consumerVO.getSort()==null){
                throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"排序不能为空");
            }
            Consumer consumer = consumerService.add(consumerVO);
            outStockVO.setConsumerId(consumer.getId());
        }
        //提交发放单
        outStockService.addOutStock(outStockVO);
        return ResponseBean.success();
    }


    /**
     * 发放单列表
     * @param pageNum
     * @param pageSize
     * @param outStockVO
     * @return
     */
    @ApiOperation(value = "出库单列表")
    @GetMapping("/findOutStockList")
    public ResponseBean findInStockList(
            @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
            @RequestParam(value = "pageSize") Integer pageSize,
            OutStockVO outStockVO) {
        PageVO<OutStockVO> outStockList = outStockService.findOutStockList(pageNum, pageSize, outStockVO);
        return ResponseBean.success(outStockList);
    }

    /**
     * 移入回收站
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "发放单回收失败", operation = "发放单回收")
    @ApiOperation(value = "移入回收站", notes = "移入回收站")
    @RequiresPermissions({"outStock:remove"})
    @PutMapping("/remove/{id}")
    public ResponseBean remove(@PathVariable Long id) throws BusinessException {
        outStockService.remove(id);
        return ResponseBean.success();
    }
    /**
     * 物资发放单详细
     *
     * @param id
     * @return
     */
    @RequiresPermissions({"outStock:detail"})
    @ApiOperation(value = "发放单明细")
    @GetMapping("/detail/{id}")
    public ResponseBean detail(@PathVariable Long id,
                               @RequestParam(value = "pageNum", defaultValue = "1") Integer pageNum,
                               @RequestParam(value = "pageSize",defaultValue = "3") Integer pageSize) throws BusinessException {
        OutStockDetailVO detail = outStockService.detail(id,pageNum,pageSize);
        return ResponseBean.success(detail);
    }


    /**
     * 删除物资发放单
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "发放单删除失败", operation = "发放单删除")
    @RequiresPermissions({"outStock:delete"})
    @ApiOperation(value = "删除物资发放单")
    @GetMapping("/delete/{id}")
    public ResponseBean delete(@PathVariable Long id) throws BusinessException {
        outStockService.delete(id);
        return ResponseBean.success();
    }


    /**
     * 发放审核
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "发放单审核失败", operation = "发放单审核")
    @ApiOperation(value = "入库审核")
    @PutMapping("/publish/{id}")
    @RequiresPermissions({"outStock:publish"})
    public ResponseBean publish(@PathVariable Long id) throws BusinessException {
        outStockService.publish(id);
        return ResponseBean.success();
    }



    /**
     * 恢复数据从回收站
     * @param id
     * @return
     */
    @ControllerEndpoint(exceptionMessage = "发放单恢复失败", operation = "发放单恢复")
    @ApiOperation(value = "恢复数据", notes = "从回收站中恢复入库单")
    @RequiresPermissions({"outStock:back"})
    @PutMapping("/back/{id}")
    public ResponseBean back(@PathVariable Long id) throws BusinessException {
        outStockService.back(id);
        return ResponseBean.success();
    }


}
