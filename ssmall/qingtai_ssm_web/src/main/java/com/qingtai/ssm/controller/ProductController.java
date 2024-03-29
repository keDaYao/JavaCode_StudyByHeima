package com.qingtai.ssm.controller;


import com.qingtai.ssm.domain.Product;
import com.qingtai.ssm.service.IproductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.security.RolesAllowed;
import java.util.List;

@Controller
@RequestMapping("/product")
public class ProductController {

    @Autowired
    private IproductService productService;


    @RequestMapping("/save.do")
    public String save(Product product) throws Exception{
        productService.save(product);
        return "redirect:findAll.do";
    }


    //查询全部产品
    @RequestMapping("/findAll.do")
    @RolesAllowed("ADMIN")
    public ModelAndView findAll() throws Exception{
        System.out.println("查询了...");
        ModelAndView mv = new ModelAndView();

        List<Product> ps = productService.findAll();

        mv.addObject("productList",ps);
        mv.setViewName("product-list");
        return mv;
    }
}
