package com.qingtai.ssm.service;

import com.qingtai.ssm.domain.Product;

import java.util.List;

public interface IproductService {

    void save(Product product) throws Exception;
    List<Product> findAll() throws Exception;
}
