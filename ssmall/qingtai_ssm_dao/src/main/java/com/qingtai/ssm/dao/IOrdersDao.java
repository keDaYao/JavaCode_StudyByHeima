package com.qingtai.ssm.dao;

import com.qingtai.ssm.domain.Orders;
import com.qingtai.ssm.domain.Product;
import org.apache.ibatis.annotations.One;
import org.apache.ibatis.annotations.Result;
import org.apache.ibatis.annotations.Results;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface IOrdersDao {


   /* @Select("select * from orders")
    @Results(
            {
                    @Result(id=true,column = "id",property = "id"),
                    @Result(column = "orderNum",property = "orderNum"),
                    @Result(column = "orderTime",property = "orderTime"),
                    @Result(column = "orderStatus",property = "orderStatus"),
                    @Result(column = "peopleCount",property = "peopleCount"),
                    @Result(column = "payType",property = "payType"),
                    @Result(column = "orderDesc",property = "orderDesc"),
                    @Result(column = "productId",property = "product",javaType = Product.class,one = @One(select = "com.qingtai.ssm.dao.IProductDao.findById"))
            }
    )
    public List<Orders> findAll() throws Exception;*/


    @Select("select * from orders")
    @Results({
            @Result(id=true,column = "id",property = "id"),
            @Result(column = "orderNum",property = "orderNum"),
            @Result(column = "orderTime",property = "orderTime"),
            @Result(column = "orderStatus",property = "orderStatus"),
            @Result(column = "peopleCount",property = "peopleCount"),
            @Result(column = "payType",property = "payType"),
            @Result(column = "orderDesc",property = "orderDesc"),
            @Result(column = "productId",property = "product",one = @One(select =
                    "com.qingtai.ssm.dao.IproductDao.findById"))
    })
    List<Orders> findAll() throws Exception;


}
