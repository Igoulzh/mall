package com.mall.controller;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.mall.pojo.User;
import com.mall.service.UserService;
import com.mall.util.Page;

@Controller
@RequestMapping("")
public class AdminController {
	@Autowired
	UserService userService;
	
	@RequestMapping("admin")
	public String admin(){
		return "adm/admin";
	}
	@RequestMapping("adminBuyer")
	public ModelAndView adminBuyer(Page page) {
		ModelAndView mav=new ModelAndView();
		PageHelper.offsetPage(page.getStart(), 5);
		List<User> user=userService.list();
		int total=(int) new PageInfo<>(user).getTotal();
		
		page.caculateLast(total);
		
		mav.addObject("user",user);
		mav.setViewName("adm/adminBuyer");
		return mav;
	}

	@RequestMapping("userDelete")
	public String userDelete(int id) {
		userService.delete(id);
		return "redirect:adminBuyer";
	}
	@RequestMapping("adminBuyerUserEdit")
	@ResponseBody
	public User adminBuyerUserEdit(int id){
		User user=userService.get(id);
		return user;
		//System.out.println(user.getAccount());
	}
	@RequestMapping("adminBuyerUserEditConfirm")
	@ResponseBody
	public User adminBuyerUserEditConfirm(@RequestBody User user){
	
		userService.update(user);
		return user;
	}
	
}
