package com.qingtai.ssm.controller;


import com.qingtai.ssm.domain.Orders;
import com.qingtai.ssm.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/orders")
public class OrdersContrller {


    @Autowired
    private IOrdersService ordersService;

    @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception{

        ModelAndView mv = new ModelAndView();

        List<Orders> orderList = ordersService.findAll();
        mv.addObject("ordersList",orderList);
        mv.setViewName("orders-list");
        return mv;
    }

}
