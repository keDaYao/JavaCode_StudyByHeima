package com.qingcheng.controller.goods;

import com.alibaba.dubbo.config.annotation.Reference;


import com.qingcheng.entity.PageResult;
import com.qingcheng.entity.Result;
import com.qingcheng.pojo.goods.Brand;
import com.qingcheng.service.goods.BrandService;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/brand")
public class BrandController {

    @Reference
    private BrandService brandService;

    @RequestMapping("/findAll")
    public List<Brand> findAll(){
        return brandService.findAll();
    }

    //只能是get方式请求
    @GetMapping("/findPage")
    public PageResult<Brand> findPage(int page,int size){
        return  brandService.findPage(page,size);
    }

    //@RequestBody 是post传过来的对象
    @PostMapping("/findList")
    public List<Brand> findList( @RequestBody Map searchMap){
        return brandService.findList(searchMap);
    }

    //PageResult、Brand是domain下的类，
    @PostMapping("/findPage")
    public PageResult<Brand>  findPage(@RequestBody Map searchMap,int page,int size ){
        return brandService.findPage(searchMap,page,size);
    }

    //根据ID查询品牌
    @GetMapping("/findById")
    public Brand findById(Integer id){
        return brandService.findById(id);
    }

    //品牌新增
    @PostMapping("/add")
    public Result add(@RequestBody  Brand brand){
        //int x=1/0;
        brandService.add(brand);
        //Result默认构造函数是执行成功
        return new Result();
    }


    //品牌修改
    @PostMapping("/update")
    public Result update(@RequestBody  Brand brand){
        brandService.update(brand);
        return new Result();
    }

    @GetMapping("delete")
    public Result delete(Integer id){
        brandService.delete(id);
        return new Result();
    }

}
