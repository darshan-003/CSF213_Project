package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.dao.ProductsRepo;
import com.example.demo.Products;

@Controller


public class ProductController {
	
	@Autowired
	ProductsRepo repo ;
	
	
	@RequestMapping("/addProduct")

	public String addProduct(Products product)
	{
		
		
		
		return "Postproduct.jsp";
	}
	
	
	
	
	
	
	@RequestMapping("/addedProduct")

	public ModelAndView addedProduct(Products product)
	{
		repo.save(product);
		
		
		ModelAndView mv = new ModelAndView() ;
		
		
		
		
		mv.addObject("product", product) ;
		
		mv.setViewName("Products.jsp") ;
	
		
		
		
		
		
		
		return mv  ;
	}
	
	
	@RequestMapping("/individualProduct")

	public ModelAndView IndividualProduct(@RequestParam String id)
	{
		
		System.out.println("Hey I am in");
		
		System.out.println(id);
		
		ModelAndView mv = new ModelAndView() ;
		
		List<Products> productList = repo.findById(id) ;
		
		Products product = productList.get(0) ;
		
		
		
		
		mv.addObject("product", product) ;
		
		mv.setViewName("Hi") ;
		
		mv.setViewName("IndividualProduct.jsp") ;
	
		
		
		
		
		
		
		return mv  ;
	}

	@RequestMapping("/faq")

	public String Faq()
	{
		
		
		
		return "Faq.jsp";
	}
	
	
	

	
	
	
	
}

	

