package com.qingtai.ssm.dao;

import com.qingtai.ssm.domain.Member;
import com.qingtai.ssm.domain.Orders;
import com.qingtai.ssm.domain.Product;
import org.apache.ibatis.annotations.*;
import org.springframework.web.bind.annotation.RequestParam;

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


    @Select("select * from orders where id=#{orderId}")
    @Results({
            @Result(id=true,column = "id",property = "id"),
            @Result(column = "orderNum",property = "orderNum"),
            @Result(column = "orderTime",property = "orderTime"),
            @Result(column = "orderStatus",property = "orderStatus"),
            @Result(column = "peopleCount",property = "peopleCount"),
            @Result(column = "payType",property = "payType"),
            @Result(column = "orderDesc",property = "orderDesc"),
            @Result(column = "productId",property = "product",one = @One(select = "com.qingtai.ssm.dao.IproductDao.findById")),
            @Result(property = "member",column = "memberId",one=@One(select="com.qingtai.ssm.dao.IMemberDao.findById")),
            @Result(property = "travellers",column = "id",many=@Many(select="com.qingtai.ssm.dao.ITravellerDao.findByOrdersId"))
    })
    public Orders findById(String orderId) throws Exception;
}
