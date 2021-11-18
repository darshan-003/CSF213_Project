package com.example.demo;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Products {
	
	@Id
	 
	
	public String name ;
	
	public String id ;
	public int quantity;
	public String imageUrl ;
	public String description ;
	public int price ;

	
	
	
	
	
	 
	
	
	
	
	
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
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
	










	@Override
	public String toString() {
		return "Products [name=" + name + ", id=" + id + ", imageUrl=" + imageUrl + ", description=" + description
				+ ", price=" + price + "]";
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	
	
	
	

	
	

}
//insert into Products values ('TataSalt') ;
