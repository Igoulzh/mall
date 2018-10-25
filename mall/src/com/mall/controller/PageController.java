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
public class PageController {
	@Autowired
	UserService userService;
	@RequestMapping("register")
	public String register(Model model,User user) {
		String account=user.getAccount();
		//HtmlUtils 转义账号， 防止恶意注册
		account=HtmlUtils.htmlEscape(account);
		user.setAccount(account);
		//调用userService中的判定是否存在
		boolean exist=userService.isExist(account);
		
		//如果账号存在
		if(exist) {
			String m="该账号已经被使用";
			model.addAttribute("message",m);
			model.addAttribute("user",null);
			return "register";
		}
		//若账号不存在，则添加
		userService.add(user);
		
		return "registerSuccessPage";
	}
	
	@RequestMapping("login")
	public String login(String account,String password,Model model,HttpSession session) {
			//HtmlUtils转义
			account=HtmlUtils.htmlEscape(account);
			User user=userService.get(account, password);

			if(null==user) {
				model.addAttribute("message","账号密码错误");
				return "login";
			}
			if(null!=user&&null==user.getType()){
				session.setAttribute("user",user);
				return "homepage";
			}
			if(null!=user&&0==user.getType()) {
				session.setAttribute("user",user);
				return "homepage";
			}
			if(user!=null&&1==user.getType()){
			return "redirect:admin";
		}

			return "login";			
	}
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.removeAttribute("user");
		return "homepage";
		
	}
	
}
