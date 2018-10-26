package com.mall.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mall.pojo.Product;
import com.mall.pojo.User;
import com.mall.service.ProductService;
import com.mall.service.UserService;

@Controller
@RequestMapping("")
public class JumpController {
	@Autowired
	UserService userService;
	@Autowired
	ProductService productService;

	
	@RequestMapping("homePage")
	public ModelAndView homePage() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("homepage");
		return mav;
	}
	@RequestMapping("homePage2")
	public ModelAndView homePage2(){
		List<Product> product=productService.list();
		ModelAndView mav=new ModelAndView();
		mav.addObject("product",product);
		mav.setViewName("homepage2");
		return mav;
	}
	@RequestMapping("loginPage")
	public String loginPage() {
		return "login";
	}
	@RequestMapping("registerPage")
	public String registerPage() {
		return "register";
	}
	
	@RequestMapping("testPage")
	public ModelAndView testPage(){
		ModelAndView mav=new ModelAndView();
		mav.setViewName("test");
		return mav;
	}
	@RequestMapping("test")
	public void test(String name){
		ModelAndView mav=new ModelAndView();
		List<User> user=userService.list();
		System.out.println(name);
	}
}
