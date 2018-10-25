package com.mall.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.mall.pojo.Product;
import com.mall.pojo.User;
import com.mall.service.ProductService;
import com.mall.service.UserService;
@Controller
public class ProductController {
	@Autowired
	ProductService productService;
	@Autowired
	UserService userService;
	
	@RequestMapping("detailPage")
	public String detailPage(int id,Model model) {
		
		Product product=productService.get(id);
		System.out.println(product.getName());
		model.addAttribute("product",product);
		
		
		return "detail";
	}
	@RequestMapping("addToShoppingTrolley")
	public String addToShoppingTrolley(@RequestBody int id){
		
		return null;
	}
}
