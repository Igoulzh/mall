package com.mall.controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.UUID;

import com.mall.util.ImageUtil;
import com.mall.util.UploadedImageFile;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mall.pojo.Product;
import com.mall.pojo.User;
import com.mall.service.ProductService;
import com.mall.service.UserService;

import javax.imageio.ImageIO;
import javax.servlet.http.HttpSession;

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
	@RequestMapping("uploadFile")
	public String uploadfile(@RequestParam(value="uploadFile",required=false) MultipartFile image, HttpSession session) throws IOException {
		//获取文件原始名称
		String originalFilename = image.getOriginalFilename();
		//上传图片
		if(image!=null && originalFilename!=null && originalFilename.length()>0){

			File imageFolder=new File(session.getServletContext().getRealPath("upload"));
			File file=new File(imageFolder,1+".jpg");
			if(!file.getParentFile().exists()){
				file.getParentFile().mkdirs();
			}

			System.out.println(imageFolder.getAbsolutePath());
		}




//        File  imageFolder= new File(session.getServletContext().getRealPath("img/category"));
//        File file = new File(imageFolder,5+".jpg");
//        if(!file.getParentFile().exists())
//            file.getParentFile().mkdirs();
//        System.out.println(file.getAbsolutePath()+"1");
//        //image.getImage().transferTo(file);
//        BufferedImage img = ImageUtil.change2jpg(file);
//        ImageIO.write(img, "jpg", file);
	    return "showfile";
	}
}
