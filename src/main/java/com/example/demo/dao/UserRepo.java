package com.example.demo.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.example.demo.User;

public interface UserRepo extends CrudRepository<User, Integer> {
	List<User> findByUsername(String username);
}
