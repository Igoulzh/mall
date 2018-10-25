package com.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.mapper.ProductMapper;
import com.mall.pojo.Product;
import com.mall.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductMapper productMapper;
	@Override
	public Product get(int id) {
		return productMapper.selectByPrimaryKey(id);
	}
	
}
