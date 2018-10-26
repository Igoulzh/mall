package com.mall.service;

import com.mall.pojo.Product;

import java.util.List;

public interface ProductService {
	Product get(int id);
	List list();
}
