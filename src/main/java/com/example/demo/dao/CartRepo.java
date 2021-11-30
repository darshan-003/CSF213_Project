package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.CartProduct;

public interface CartRepo extends JpaRepository<CartProduct, Integer> {

	List<CartProduct> findByUsername(String username);

	List<CartProduct> findByUsernameAndId(String username, String id);

}
