package com.qingtai.ssm.controller;


import com.github.pagehelper.PageInfo;
import com.qingtai.ssm.domain.Orders;
import com.qingtai.ssm.service.IOrdersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/orders")
public class OrdersContrller {


    @Autowired
    private IOrdersService ordersService;


    //查询全部订单未分页
   /* @RequestMapping("/findAll.do")
    public ModelAndView findAll() throws Exception{

        ModelAndView mv = new ModelAndView();

        List<Orders> orderList = ordersService.findAll();
        mv.addObject("ordersList",orderList);
        mv.setViewName("orders-list");
        return mv;
    }*/
    @RequestMapping("/findAll.do")
    @Secured("ROLE_ADMIN")
    public ModelAndView findAll(@RequestParam(name = "page", required = true, defaultValue = "1") Integer page, @RequestParam(name = "size", required = true, defaultValue = "10") Integer pageSize) throws Exception {
        List<Orders> ordersList = ordersService.findAllByPage(page, pageSize);
       //pageinfo就是一个分页bean
        PageInfo pageInfo = new PageInfo(ordersList);
        ModelAndView mv = new ModelAndView();

        mv.addObject("pageInfo", pageInfo);
        mv.setViewName("orders-page-list");
        return mv;
    }


    @RequestMapping("/findById.do")
    public ModelAndView findById(@RequestParam(name="id",required = true) String orderId) throws Exception{

        ModelAndView mv = new ModelAndView();
        Orders orders = ordersService.findById(orderId);

        mv.addObject("orders",orders);
        mv.setViewName("orders-show");
        return mv;

    }


}
