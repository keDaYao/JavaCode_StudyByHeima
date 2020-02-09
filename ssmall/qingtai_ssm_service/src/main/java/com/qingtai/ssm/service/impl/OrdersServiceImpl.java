package com.qingtai.ssm.service.impl;

import com.github.pagehelper.PageHelper;
import com.qingtai.ssm.dao.IOrdersDao;
import com.qingtai.ssm.domain.Orders;
import com.qingtai.ssm.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class OrdersServiceImpl implements IOrdersService {


    @Autowired
    private IOrdersDao ordersDao;

    @Override
    public List<Orders> findAll() throws Exception {
        return ordersDao.findAll();
    }

    @Override
    public List<Orders> findAllByPage(int page, int pageSize) throws Exception {
        PageHelper.startPage(page, pageSize);
        return ordersDao.findAll();
    }

    @Override
    public Orders findById(String orderId) throws Exception{
        return ordersDao.findById(orderId);
    }
}
