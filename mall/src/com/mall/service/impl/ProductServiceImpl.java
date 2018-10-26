package com.mall.service.impl;

import com.mall.pojo.ProductExample;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.mapper.ProductMapper;
import com.mall.pojo.Product;
import com.mall.service.ProductService;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{
	@Autowired
	ProductMapper productMapper;
	@Override
	public Product get(int id) {
		return productMapper.selectByPrimaryKey(id);
	}

	@Override
	public List list() {
		ProductExample example=new ProductExample();
		example.setOrderByClause("id desc");
		return productMapper.selectByExample(example);
	}

}
