package com.mall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import com.mall.pojo.User;
import com.mall.service.UserService;

@Controller
@RequestMapping("")
public class UserController {
	@Autowired
	UserService userService;
	@RequestMapping( "infoPerfectionPage")
	public String infoPerfectionPage(int id,Model model) {
		User user=userService.get(id);
		model.addAttribute("user",user);
		return "user/infoPerfection";
	}
	@RequestMapping("userInfoUpdate")
	@ResponseBody
	public User userInfoUpdate(@RequestBody User user,HttpSession session) {
		System.out.println(user.getAccount());
		userService.update(user);
		System.out.println("2");
		session.setAttribute("user", user);
		System.out.println("3");
		return user;
	}
	@RequestMapping("getUserId")
	public String getUserId(int id,Model model){
		User user=userService.get(id);
		model.addAttribute("user",user);
		return "detail";
	}
}
