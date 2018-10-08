package com.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mall.pojo.User;
import com.mall.service.UserService;

@Controller
@RequestMapping("")
public class AdminController {
	@Autowired
	UserService userService;
	
	@RequestMapping("userManagement")
	public String userManagement(Model model) {
		List<User> user=userService.list();
		model.addAttribute("user",user);
		return "adm/userManagement";
		
	}
	
}
