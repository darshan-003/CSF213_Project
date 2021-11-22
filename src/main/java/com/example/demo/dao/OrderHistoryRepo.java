package com.example.demo.dao;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.demo.CartProduct;
import com.example.demo.OrderHistory;


public interface OrderHistoryRepo extends JpaRepository<OrderHistory,Integer> {
	
	List<OrderHistory> findByUsername(String username);
	List<OrderHistory> findByUsernameAndId(String username, String id);
	
	

}
