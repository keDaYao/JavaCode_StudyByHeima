package com.qingtai.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.qingtai.ssm.dao.IproductDao;
import com.qingtai.ssm.domain.Product;
import com.qingtai.ssm.service.IproductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional  //事务
public class ProductServiceImpl implements IproductService{

    @Autowired
    private IproductDao productDao;

    @Override
    public void save(Product product) throws Exception {
        productDao.save(product);
    }

    @Override
    public List<Product> findAll() throws Exception {

        //pageNum是页码值  ，   pageSize代表每页显示条数   必须写在调用分页代码执行之前

        PageHelper.startPage(1,5);
        return productDao.findAll();
    }
}
