package com.mall.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mall.mapper.UserMapper;
import com.mall.pojo.User;
import com.mall.pojo.UserExample;
import com.mall.service.UserService;
@Service
public class UserServiceImpl implements UserService{
	@Autowired
	UserMapper userMapper;
	
	@Override
	public void add(User u) {
		userMapper.insert(u);
		
	}

	@Override
	public void delete(int id) {
		userMapper.deleteByPrimaryKey(id);
	}

	@Override
	public void update(User u) {
		 userMapper.updateByPrimaryKeySelective(u);
	}

	@Override
	public User get(int id) {
		return userMapper.selectByPrimaryKey(id);
	}

	@Override
	public List list() {
		UserExample example=new UserExample();
		example.setOrderByClause("id desc");
		return userMapper.selectByExample(example);
	}

	@Override
	public boolean isExist(String account) {
		UserExample example =new UserExample();
		example.createCriteria().andAccountEqualTo(account);
		List<User> result =userMapper.selectByExample(example);
		if(!result.isEmpty()) {
			return true;
		}
		return false;
	}

	@Override
	public User get(String account, String password) {
		UserExample example=new UserExample();
		//这里是只用账号密码登录，后面还需要改成账号或者手机号登录
		example.createCriteria().andAccountEqualTo(account).andPasswordEqualTo(password);
		List<User> result=userMapper.selectByExample(example);
		if(result.isEmpty()) {
			return null;
		}
		//get(0)得到结果中的第一条数据的意思
		return result.get(0);
	}

}
