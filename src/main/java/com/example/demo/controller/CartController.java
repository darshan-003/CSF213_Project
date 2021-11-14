package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.CartProduct;
import com.example.demo.Products;
import com.example.demo.dao.CartRepo;
import com.example.demo.dao.ProductsRepo;

@Controller

	
public class CartController
{
	@Autowired
	CartRepo cart_repo;
	
	@Autowired
	ProductsRepo product_repo;
	
	
	@RequestMapping("/addToCart")
	public void addTocart(String id, String username)
	{
		System.out.println(id);
		System.out.println(username);
		
		List<Products> ProductList= product_repo.findById(id);
		Products product = ProductList.get(0);
		
		CartProduct cp = new CartProduct(product.name, product.id, product.imageUrl, product.description, product.price,username,1);
		
		cart_repo.save(cp);

	}
	
	
	
	@RequestMapping("/{username}/{password}/cart")
	public ModelAndView viewCart(@PathVariable ("username") String username, @PathVariable ("password") String password)
	{
		
		ModelAndView mv= new ModelAndView();
		
		System.out.println(username+"working"+password);
		
		List<CartProduct> cp = cart_repo.findByUsername(username);
		System.out.println(cp.get(0).description);
		System.out.println(cp.get(1).description);
		
		mv.setViewName("CartPage");
		
		return mv;
	}
	
	
	
	
	
	
	
	
}
