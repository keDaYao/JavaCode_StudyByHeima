package com.qingcheng.dao;

import com.qingcheng.pojo.goods.Brand;
import tk.mybatis.mapper.common.Mapper;

/**数据访问层
 * 继承了Mapper,就具有增删改查的整套方法，
 * */
public interface BrandMapper extends Mapper<Brand> {

}
