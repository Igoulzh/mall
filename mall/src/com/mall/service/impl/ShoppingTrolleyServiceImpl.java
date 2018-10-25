package com.mall.service.impl;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.mapper.ShoppingtrolleyMapper;
import com.mall.pojo.Shoppingtrolley;
import com.mall.service.ShoppingTrolleyService;

@Service
public class ShoppingTrolleyServiceImpl implements ShoppingTrolleyService {
	@Autowired
	ShoppingtrolleyMapper shoppingtrolleyMapper;
	
	@Override
	public void add(Shoppingtrolley shoppingtrolley) {
		shoppingtrolleyMapper.insert(shoppingtrolley);
		
	}

	

}
