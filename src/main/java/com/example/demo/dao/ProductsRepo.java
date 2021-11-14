package com.example.demo.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.Products;

public interface ProductsRepo extends CrudRepository<Products,Integer>{
	
	
	List<Products> findById(String id) ;

	List<Products> findByName(String name);
	
	List<Products> findAll();
	
	 
	

} 
