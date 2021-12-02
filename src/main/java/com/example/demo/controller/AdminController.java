package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Admin;
import com.example.demo.Products;
import com.example.demo.dao.ProductsRepo;

@Controller
public class AdminController {
	
	@Autowired
	ProductsRepo product_repo;
	
	@RequestMapping("/admin_signin")
	

	public String adminSignin() {
		return "adminSignin.jsp";
	}

	@RequestMapping("/getAdmin")
	public ModelAndView getUser(@PathVariable("username") @RequestParam String username,
			@RequestParam String password) {
		ModelAndView mv = new ModelAndView();

		Admin admin = new Admin();
		if (admin.passwordmatch(password) && admin.adminNameMatch(username)) {
			mv.addObject("admin", admin);
			mv.setViewName("adminpage.jsp");
			return mv;
		} else {
			mv.setViewName("admin_incorrect.jsp");
			return mv;
		}
	}
	
	
	@RequestMapping("/ProductStatus")

	public ModelAndView ProductStatus() {
		ModelAndView mv = new ModelAndView();
		List<Products> ProductList = product_repo.findAll();
		mv.addObject("ProductList",ProductList);
		mv.setViewName("ProductStatus.jsp");
		return mv;
	}
}
