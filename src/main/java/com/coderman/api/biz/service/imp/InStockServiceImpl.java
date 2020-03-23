package com.coderman.api.biz.service.imp;

import com.coderman.api.biz.converter.InStockConverter;
import com.coderman.api.biz.mapper.InStockInfoMapper;
import com.coderman.api.biz.mapper.InStockMapper;
import com.coderman.api.biz.mapper.ProductMapper;
import com.coderman.api.biz.mapper.ProductStockMapper;
import com.coderman.api.biz.pojo.InStock;
import com.coderman.api.biz.pojo.InStockInfo;
import com.coderman.api.biz.pojo.Product;
import com.coderman.api.biz.pojo.ProductStock;
import com.coderman.api.biz.service.InStockService;
import com.coderman.api.biz.vo.InStockDetailVO;
import com.coderman.api.biz.vo.InStockItemVO;
import com.coderman.api.biz.vo.InStockVO;
import com.coderman.api.system.bean.ActiveUser;
import com.coderman.api.system.exception.BizException;
import com.coderman.api.system.vo.PageVO;
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
 * @Date 2020/3/19 09:56
 * @Version 1.0
 **/
@Transactional
@Service
public class InStockServiceImpl implements InStockService {

    @Autowired
    private InStockMapper inStockMapper;

    @Autowired
    private InStockConverter inStockConverter;

    @Autowired
    private ProductMapper productMapper;

    @Autowired
    private InStockInfoMapper inStockInfoMapper;

    @Autowired
    private ProductStockMapper productStockMapper;

    @Override
    public void add(InStockVO inStockVO) {

    }

    /**
     * 入库单
     * @param pageNum
     * @param pageSize
     * @param inStockVO
     * @return
     */
    @Override
    public PageVO<InStockVO> findInStockList(Integer pageNum, Integer pageSize, InStockVO inStockVO) {
        PageHelper.startPage(pageNum,pageSize);
        Example o = new Example(InStock.class);
        o.setOrderByClause("create_time desc");
        List<InStock> inStocks = inStockMapper.selectByExample(o);
        List<InStockVO> inStockVOS=inStockConverter.converterToVOList(inStocks);
        PageInfo<InStock> inStockPageInfo = new PageInfo<>(inStocks);
        return new PageVO<>(inStockPageInfo.getTotal(),inStockVOS);
    }

    /**
     * 入库单明细
     * @param id
     * @return
     */
    @Override
    public InStockDetailVO detail(Long id) {
        InStockDetailVO inStockDetailVO = new InStockDetailVO();
        InStock inStock = inStockMapper.selectByPrimaryKey(id);
        BeanUtils.copyProperties(inStock,inStockDetailVO);
        String inNum = inStock.getInNum();//入库单号
        //查询该单所有的物资
        Example o = new Example(InStockInfo.class);
        o.createCriteria().andEqualTo("inNum",inNum);
        List<InStockInfo> inStockInfos = inStockInfoMapper.selectByExample(o);
        if(!CollectionUtils.isEmpty(inStockInfos)){
            for (InStockInfo inStockInfo : inStockInfos) {
                String pNum = inStockInfo.getPNum();
                //查出物资
                Example o1 = new Example(Product.class);
                o1.createCriteria().andEqualTo("pNum",pNum);
                List<Product> products = productMapper.selectByExample(o1);
                if(!CollectionUtils.isEmpty(products)){
                    Product product = products.get(0);
                    InStockItemVO inStockItemVO = new InStockItemVO();
                    BeanUtils.copyProperties(product,inStockItemVO);
                    inStockItemVO.setCount(inStockInfo.getProductNumber());
                    inStockDetailVO.getItemVOS().add(inStockItemVO);
                }
            }
        }
        return inStockDetailVO;
    }

    @Override
    public void update(Long id, InStockVO inStockVO) {

    }

    @Override
    public void delete(Long id) {

    }

    /**
     * 入库
     * @param inStockVO
     */
    @Transactional
    @Override
    public void addIntoStock(InStockVO inStockVO) {
        String IN_STOCK_NUM = UUID.randomUUID().toString().substring(0, 32);
        int itemNumber=0;//记录该单的总数
        InStock inStock = new InStock();
        BeanUtils.copyProperties(inStockVO,inStock);
        inStock.setCreateTime(new Date());
        inStock.setModified(new Date());
        //获取商品的明细
        List<Object> products = inStockVO.getProducts();
        if(!CollectionUtils.isEmpty(products)) {
            for (Object product : products) {
                LinkedHashMap item = (LinkedHashMap) product;
                Integer productId = (Integer) item.get("productId");
                int productNumber = (int) item.get("productNumber");
                Product dbProduct = productMapper.selectByPrimaryKey(productId);
                if (dbProduct == null) {
                    throw new BizException("该物资不存在");
                } else {
                    itemNumber += productNumber;
                    //插入入库单明细
                    InStockInfo inStockInfo = new InStockInfo();
                    inStockInfo.setCreateTime(new Date());
                    inStockInfo.setModifiedTime(new Date());
                    inStockInfo.setProductNumber(productNumber);
                    inStockInfo.setPNum(dbProduct.getPNum());
                    inStockInfo.setInNum(IN_STOCK_NUM);
                    inStockInfoMapper.insert(inStockInfo);
                    //入库如果存在，就增加数量，否则插入
                    Example o = new Example(ProductStock.class);
                    o.createCriteria().andEqualTo("pNum",dbProduct.getPNum());
                    List<ProductStock> productStocks = productStockMapper.selectByExample(o);
                    if(!CollectionUtils.isEmpty(productStocks)){
                        //更新数量
                        ProductStock productStock = productStocks.get(0);
                        productStock.setStock(productStock.getStock()+productNumber);
                        productStockMapper.updateByPrimaryKey(productStock);
                    }else {
                        //插入
                        ProductStock productStock = new ProductStock();
                        productStock.setPNum(dbProduct.getPNum());
                        productStock.setStock((long) productNumber);
                        productStockMapper.insert(productStock);
                    }
                }
            }
            inStock.setProductNumber(itemNumber);
            ActiveUser activeUser = (ActiveUser) SecurityUtils.getSubject().getPrincipal();
            inStock.setOperator(activeUser.getUser().getUsername());
            //生成入库单
            inStock.setInNum(IN_STOCK_NUM);
            inStockMapper.insert(inStock);
        }

    }
}
