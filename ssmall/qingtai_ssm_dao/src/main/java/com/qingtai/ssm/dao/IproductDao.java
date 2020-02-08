package com.qingtai.ssm.dao;

import com.qingtai.ssm.domain.Product;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import java.util.List;

public interface IproductDao {

    //查询所有产品
    @Select("select * from product")
    List<Product> findAll() throws Exception;

    //产品添加
    @Insert("insert into product (productNum,productName,cityName,departureTime,productPrice,productDesc,productStatus) values(#{productNum},#{productName},#{cityName},#{departureTime},#{productPrice},#{productDesc},#{productStatus})")
    public void save(Product product);

    @Select("select * from product where id = #{id}")
    public Product findById(String id) throws Exception;
}
