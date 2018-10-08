package com.mall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.HtmlUtils;

import com.mall.pojo.User;
import com.mall.service.UserService;

@Controller
@RequestMapping("")
public class JumpController {
	@Autowired
	UserService userService;
	
	@RequestMapping("homePage")
	public String homePage() {
		return "homepage";
	}
	@RequestMapping("loginPage")
	public String loginPage() {
		return "login";
	}
	@RequestMapping("registerPage")
	public String registerPage() {
		return "register";
	}
	@RequestMapping("detailPage")
	public String detailPage() {
		return "detail";
	}
}
