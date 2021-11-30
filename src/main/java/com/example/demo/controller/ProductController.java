package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.ProductsRepo;
import com.example.demo.dao.UserRepo;
import com.example.demo.Products;
import com.example.demo.User;

@Controller

public class ProductController {

	@Autowired
	ProductsRepo repo;
	@Autowired
	UserRepo userrepo;

	@RequestMapping("/addProduct")

	public String addProduct(Products product) {

		return "Postproduct.jsp";
	}

	@RequestMapping("/addedProduct")

	public ModelAndView addedProduct(Products product) {
		repo.save(product);

		ModelAndView mv = new ModelAndView();

		mv.addObject("product", product);

		mv.setViewName("adminpage.jsp");

		return mv;
	}

	@RequestMapping("/individualProduct")

	public ModelAndView IndividualProduct(@RequestParam String username, @RequestParam String id,
			@RequestParam String password) {

		System.out.println("Hey I am in");

		System.out.println(id);

		ModelAndView mv = new ModelAndView();

		List<Products> productList = repo.findById(id);

		Products product = productList.get(0);

		List<User> UserList;
		UserList = userrepo.findByUsername(username);

		if (UserList.isEmpty()) {
			mv.setViewName("user_incorrect.jsp");
			return mv;
		}

		User user = UserList.get(0);
		if (user.passwordmatch(password)) {
			mv.addObject("user", user);
			mv.addObject("product", product);
			mv.setViewName("IndividualProduct.jsp");
			return mv;
		} else {
			mv.setViewName("user_incorrect.jsp");
			return mv;
		}

		// mv.addObject("product", product) ;

		// mv.setViewName("Hi") ;

		// mv.setViewName("IndividualProduct.jsp") ;

	}

	@RequestMapping("/faq")

	public String Faq() {

		return "Faq.jsp";
	}

}
