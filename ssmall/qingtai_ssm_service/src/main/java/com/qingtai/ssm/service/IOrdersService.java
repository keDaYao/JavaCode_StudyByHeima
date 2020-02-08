package com.qingtai.ssm.service;

import com.qingtai.ssm.domain.Orders;
import org.springframework.core.annotation.Order;

import java.util.List;

public interface IOrdersService {


    List<Orders> findAll() throws Exception;
}
