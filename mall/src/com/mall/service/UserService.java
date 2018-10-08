package com.mall.service;

import java.util.List;

import com.mall.pojo.User;

public interface UserService {
	void add(User u);
	void delete(int id);
	void update(User u);
	User get(int id);
	List list();
	boolean isExist(String account);
	
	//登录
	User get(String account,String password);
}
