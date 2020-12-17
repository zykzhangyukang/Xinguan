package com.coderman.business.service.imp;

import com.coderman.business.converter.OutStockConverter;
import com.coderman.business.mapper.*;
import com.coderman.business.service.OutStockService;
import com.coderman.common.error.BusinessCodeEnum;
import com.coderman.common.error.BusinessException;
import com.coderman.common.model.business.*;
import com.coderman.common.response.ActiveUser;
import com.coderman.common.vo.business.ConsumerVO;
import com.coderman.common.vo.business.OutStockDetailVO;
import com.coderman.common.vo.business.OutStockItemVO;
import com.coderman.common.vo.business.OutStockVO;
import com.coderman.common.vo.system.PageVO;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.apache.shiro.SecurityUtils;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.CollectionUtils;
import tk.mybatis.mapper.entity.Example;

import java.util.Date;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.UUID;

/**
 * @Author zhangyukang
 * @Date 2020/5/10 14:26
 * @Version 1.0
 **/
@Service
public class OutStockServiceImpl implements OutStockService {

    @Autowired
    private OutStockMapper outStockMapper;

    @Autowired
    private OutStockConverter outStockConverter;

    @Autowired
    private ConsumerMapper consumerMapper;

    @Autowired
    private ProductMapper productMapper;

    @Autowired
    private OutStockInfoMapper outStockInfoMapper;

    @Autowired
    private ProductStockMapper productStockMapper;

    /**
     * 入库单列表
     * @param pageNum
     * @param pageSize
     * @param outStockVO
     * @return
     */
    @Override
    public PageVO<OutStockVO> findOutStockList(Integer pageNum, Integer pageSize, OutStockVO outStockVO) {
        PageHelper.startPage(pageNum,pageSize);
        Example o = new Example(OutStock.class);
        Example.Criteria criteria = o.createCriteria();
        o.setOrderByClause("create_time desc");
        if(outStockVO.getOutNum()!=null&&!"".equals(outStockVO.getOutNum())){
            criteria.andLike("outNum","%"+outStockVO.getOutNum()+"%");
        }
        if(outStockVO.getType()!=null){
            criteria.andEqualTo("type",outStockVO.getType());
        }
        if(outStockVO.getStatus()!=null){
            criteria.andEqualTo("status",outStockVO.getStatus());
        }

        List<OutStock> outStocks = outStockMapper.selectByExample(o);
        List<OutStockVO> outStockVOS=outStockConverter.converterToVOList(outStocks);
        PageInfo<OutStock> outStockPageInfo = new PageInfo<>(outStocks);
        return new PageVO<>(outStockPageInfo.getTotal(),outStockVOS);
    }

    /**
     * 提交物资发放
     * @param outStockVO
     */
    @Transactional
    @Override
    public void addOutStock(OutStockVO outStockVO) throws BusinessException {
        //随机生成发放单号
        String OUT_STOCK_NUM = UUID.randomUUID().toString().substring(0, 32).replace("-","");
        int itemNumber=0;//记录该单的总数
        //获取商品的明细
        List<Object> products = outStockVO.getProducts();
        if(!CollectionUtils.isEmpty(products)) {
            for (Object product : products) {
                LinkedHashMap item = (LinkedHashMap) product;
                //发放数量
                int productNumber = (int) item.get("productNumber");
                //物资编号
                Integer productId = (Integer) item.get("productId");
                Product dbProduct = productMapper.selectByPrimaryKey(productId);
                if (dbProduct == null) {
                    throw new BusinessException(BusinessCodeEnum.PRODUCT_NOT_FOUND);
                }else if(productNumber<=0){
                    throw new BusinessException(BusinessCodeEnum.PRODUCT_OUT_STOCK_NUMBER_ERROR,dbProduct.getName()+"发放数量不合法,无法入库");
                } else {
                    //校验库存
                    Example o=new Example(ProductStock.class);
                    o.createCriteria().andEqualTo("pNum",dbProduct.getPNum());
                    ProductStock productStock = productStockMapper.selectOneByExample(o);
                    if(productStock==null){
                        throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"该物资在库存中不存在");
                    }
                    if(productNumber>productStock.getStock()){
                        throw new BusinessException(BusinessCodeEnum.PRODUCT_STOCK_ERROR,dbProduct.getName()+"库存不足,库存剩余:"+productStock);
                    }
                    itemNumber += productNumber;
                    //入库单明细
                    OutStockInfo outStockInfo = new OutStockInfo();
                    outStockInfo.setCreateTime(new Date());
                    outStockInfo.setModifiedTime(new Date());
                    outStockInfo.setProductNumber(productNumber);
                    outStockInfo.setPNum(dbProduct.getPNum());
                    outStockInfo.setOutNum(OUT_STOCK_NUM);
                    outStockInfoMapper.insert(outStockInfo);
                }
            }
            OutStock outStock = new OutStock();
            BeanUtils.copyProperties(outStockVO,outStock);
            outStock.setCreateTime(new Date());
            outStock.setProductNumber(itemNumber);
            ActiveUser activeUser = (ActiveUser) SecurityUtils.getSubject().getPrincipal();
            outStock.setOperator(activeUser.getUser().getUsername());
            //生成入库单
            outStock.setOutNum(OUT_STOCK_NUM);
            //设置为待审核
            outStock.setStatus(2);
            outStockMapper.insert(outStock);
        }else {
            throw new BusinessException(BusinessCodeEnum.PRODUCT_OUT_STOCK_EMPTY);
        }
    }

    /**
     * 移入回收站
     * @param id
     */
    @Override
    public void remove(Long id) throws BusinessException {
        OutStock outStock = outStockMapper.selectByPrimaryKey(id);
        if(outStock==null){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"发放单不存在");
        }
        Integer status = outStock.getStatus();
        //只有status=0,正常的情况下,才可移入回收站
        if(status!=0){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"发放单状态不正确");
        }else {
            OutStock out = new OutStock();
            out.setStatus(1);
            out.setId(id);
            outStockMapper.updateByPrimaryKeySelective(out);
        }
    }

    /**
     * 从回收站恢复数据
     * @param id
     */
    @Override
    public void back(Long id) throws BusinessException {
        OutStock t = new OutStock();
        t.setId(id);
        OutStock outStock = outStockMapper.selectByPrimaryKey(t);
        if(outStock.getStatus()!=1){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"发放单状态不正确");
        }else {
            t.setStatus(0);
            outStockMapper.updateByPrimaryKeySelective(t);
        }
    }

    /**
     * 发放单详情
     * @param id
     * @param pageNum
     * @param pageSize
     * @return
     */
    @Override
    public OutStockDetailVO detail(Long id, Integer pageNum, Integer pageSize) throws BusinessException {
        OutStockDetailVO outStockDetailVO = new OutStockDetailVO();
        OutStock outStock = outStockMapper.selectByPrimaryKey(id);
        if(outStock==null){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"发放单不存在");
        }
        BeanUtils.copyProperties(outStock,outStockDetailVO);
        Consumer consumer = consumerMapper.selectByPrimaryKey(outStock.getConsumerId());
        if(consumer==null){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"物资领取方不存在,或已被删除");
        }
        ConsumerVO consumerVO = new ConsumerVO();
        BeanUtils.copyProperties(consumer,consumerVO);
        outStockDetailVO.setConsumerVO(consumerVO);
        String outNum = outStock.getOutNum();//发放单号
        //查询该单所有的物资
        Example o = new Example(OutStockInfo.class);
        PageHelper.startPage(pageNum,pageSize);
        o.createCriteria().andEqualTo("outNum",outNum);
        List<OutStockInfo> outStockInfoList = outStockInfoMapper.selectByExample(o);
        outStockDetailVO.setTotal(new PageInfo<>(outStockInfoList).getTotal());

        if(!CollectionUtils.isEmpty(outStockInfoList)){
            for (OutStockInfo outStockInfo : outStockInfoList) {
                String pNum = outStockInfo.getPNum();
                //查出物资
                Example o1 = new Example(Product.class);
                o1.createCriteria().andEqualTo("pNum",pNum);
                List<Product> products = productMapper.selectByExample(o1);
                if(!CollectionUtils.isEmpty(products)){
                    Product product = products.get(0);
                    OutStockItemVO outStockItemVO = new OutStockItemVO();
                    BeanUtils.copyProperties(product,outStockItemVO);
                    outStockItemVO.setCount(outStockInfo.getProductNumber());
                    outStockDetailVO.getItemVOS().add(outStockItemVO);
                }else {
                    throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"编号为:["+pNum+"]的物资找不到,或已被删除");
                }
            }
        }else {
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"发放编号为:["+outNum+"]的明细找不到,或已被删除");
        }
        return outStockDetailVO;
    }

    /**
     * 删除发放单
     * @param id
     */
    @Override
    public void delete(Long id) throws BusinessException {
        OutStock outStock = outStockMapper.selectByPrimaryKey(id);
        if(outStock==null){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"发放单不存在");
        }else if(outStock.getStatus()!=1&&outStock.getStatus()!=2){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"发放单状态错误,无法删除");
        }else {
           outStockMapper.deleteByPrimaryKey(id);
        }
        String inNum = outStock.getOutNum();//单号
        Example o = new Example(OutStockInfo.class);
        o.createCriteria().andEqualTo("outNum",inNum);
        outStockInfoMapper.deleteByExample(o);
    }

    /**
     * 发放单审核
     * @param id
     */
    @Override
    public void publish(Long id) throws BusinessException {
        OutStock outStock = outStockMapper.selectByPrimaryKey(id);
        Consumer consumer = consumerMapper.selectByPrimaryKey(outStock.getConsumerId());
        if(outStock==null){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"发放单不存在");
        }
        if(outStock.getStatus()!=2){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"发放单状态错误");
        }
        if(consumer==null){
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"发放来源信息错误");
        }
        String outNum = outStock.getOutNum();//发放单号
        Example o = new Example(OutStockInfo.class);
        o.createCriteria().andEqualTo("outNum",outNum);
        List<OutStockInfo> infoList = outStockInfoMapper.selectByExample(o);//发放详情
        if(!CollectionUtils.isEmpty(infoList)){
            for (OutStockInfo outStockInfo : infoList) {
                //物资编号
                String pNum = outStockInfo.getPNum();
                Integer productNumber = outStockInfo.getProductNumber();//入库物资数
                Example o1 = new Example(Product.class);
                o1.createCriteria().andEqualTo("pNum",pNum);
                List<Product> products = productMapper.selectByExample(o1);
                if(products.size()>0){
                    Product product = products.get(0);
                    //如果存在，就减少数量
                    Example o2 = new Example(ProductStock.class);
                    o2.createCriteria().andEqualTo("pNum",product.getPNum());
                    List<ProductStock> productStocks = productStockMapper.selectByExample(o2);
                    if(!CollectionUtils.isEmpty(productStocks)){
                        //更新数量
                        ProductStock productStock = productStocks.get(0);
                        if(productStock.getStock()<productNumber){
                            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"物资:"+product.getName()+"的库存不足");
                        }
                        productStock.setStock(productStock.getStock()-productNumber);
                        productStockMapper.updateByPrimaryKey(productStock);
                    }else {
                        throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"该物资在库存中找不到");
                    }
                    //修改入库单状态.
                    outStock.setCreateTime(new Date());
                    outStock.setStatus(0);
                    outStockMapper.updateByPrimaryKeySelective(outStock);
                }else {
                    throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"物资编号为:["+pNum+"]的物资不存在");
                }
            }
        }else {
            throw new BusinessException(BusinessCodeEnum.PARAMETER_ERROR,"发放的明细不能为空");
        }
    }
}
