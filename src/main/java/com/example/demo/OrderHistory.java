package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class OrderHistory{
	
	
	
	
	
	public OrderHistory() {
		super();
	}
	@Id
	
	
	public String name ;
	public String id ;
	
	public String imageUrl ;
	public String description ;
	public int price ;
	String username;

	

	public String getUsername() {
		return username;
	}




	public void setUsername(String username) {
		this.username = username;
	}
	
	
	int quantity;
	
	
	public String getName() {
		return name;
	}




	public void setName(String name) {
		this.name = name;
	}




	public String getId() {
		return id;
	}




	public void setId(String id) {
		this.id = id;
	}




	public String getImageUrl() {
		return imageUrl;
	}




	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}




	public String getDescription() {
		return description;
	}




	public void setDescription(String description) {
		this.description = description;
	}




	public int getPrice() {
		return price;
	}




	public void setPrice(int price) {
		this.price = price;
	}




	
	
	
	
	
	public OrderHistory(String name, String id, String imageUrl, String description, int price, String username,int quantity) {
		super();
		this.name = name;
		this.id = id;
		this.imageUrl = imageUrl;
		this.description = description;
		this.price = price;
		this.username = username;
		this.quantity = quantity;
	}




	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	

}
