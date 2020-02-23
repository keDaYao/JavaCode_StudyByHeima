package com.qingcheng.service.impl;

import com.alibaba.dubbo.config.annotation.Service;
import com.github.pagehelper.Page;
import com.github.pagehelper.PageHelper;
import com.qingcheng.dao.BrandMapper;
import com.qingcheng.entity.PageResult;
import com.qingcheng.pojo.goods.Brand;
import com.qingcheng.service.goods.BrandService;
import org.springframework.beans.factory.annotation.Autowired;
import tk.mybatis.mapper.entity.Example;

import java.util.List;
import java.util.Map;

//选择dubbo下的service
@Service
public class BrandServiceImpl implements BrandService {

    //dao的对象
    @Autowired
    private BrandMapper brandMapper;

    @Override
    public List<Brand> findAll() {
        return brandMapper.selectAll();
    }

    /***
     * 分页服务实现
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Brand> findPage(int page, int size) {
        //分页插件，拦截
        PageHelper.startPage(page,size);
        Page<Brand> pageResult=(Page<Brand>) brandMapper.selectAll();
        return new PageResult<>(pageResult.getTotal(),pageResult.getResult());
    }


    /***
     *  品牌条件查询
     * @param searchMap
     * @return
     */
    @Override
    public List<Brand> findList(Map<String, Object> searchMap) {
        //createExample是封装的一个方法，在下方，条件查询逻辑
        Example example = createExample(searchMap);
        return brandMapper.selectByExample(example);
    }


    /***
     *           品牌条件+分页查询
     * @param searchMap
     * @param page
     * @param size
     * @return
     */
    @Override
    public PageResult<Brand> findPage(Map<String, Object> searchMap, int page, int size) {
        PageHelper.startPage(page,size);
        Example example = createExample(searchMap);
        Page<Brand> pageResult=(Page<Brand>) brandMapper.selectByExample(example);
        return new PageResult<>(pageResult.getTotal(),pageResult.getResult());
    }

    /***
     * 根据ID查询品牌
     * @param id
     * @return
     */
    @Override
    public Brand findById(Integer id) {
        //根据主键值id查询
        return brandMapper.selectByPrimaryKey(id);
    }

    /**
     * 品牌新增
     * @param brand
     */
    @Override
    public void add(Brand brand) {
        brandMapper.insertSelective(brand);
    }

    /***
     * 品牌修改
     * @param brand
     */
    @Override
    public void update(Brand brand) {
        //根据主键进行更新，如果有null值，会被忽略（不对没有更新的数据进行修改）
        brandMapper.updateByPrimaryKeySelective(brand);
    }

    @Override
    public void delete(Integer id) {
        brandMapper.deleteByPrimaryKey(id);
    }


    private Example createExample(Map<String, Object> searchMap){
        Example example=new Example(Brand.class);
        Example.Criteria criteria = example.createCriteria();

        if(searchMap!=null){
            //andlike模糊查询 %
            if(searchMap.get("name")!=null && !"".equals(searchMap.get("name")) ){
                criteria.andLike("name","%"+(String)searchMap.get("name")+"%");
            }
            //andEqualTo陪陪查询,查一个
            if(searchMap.get("letter")!=null && !"".equals(searchMap.get("letter")) ){
                criteria.andEqualTo("letter",(String)searchMap.get("letter"));
            }
        }
        return example;
    }


}
