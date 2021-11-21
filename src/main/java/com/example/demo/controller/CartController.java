package com.example.demo.controller;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.example.demo.CartProduct;
import com.example.demo.Products;
import com.example.demo.User;
import com.example.demo.dao.CartRepo;
import com.example.demo.dao.ProductsRepo;
import com.example.demo.dao.UserRepo;
import com.example.demo.service.Price;

@Controller

	
public class CartController
{
	@Autowired
	CartRepo cart_repo;
	
	@Autowired
	ProductsRepo product_repo;
	@Autowired
	UserRepo repo;
	
	
	@RequestMapping("/addToCart")
	public ModelAndView addTocart(String username, String id, String password)
	{
		//adding to cart database
		List<Products> ProductList= product_repo.findById(id);
		Products product = ProductList.get(0);
		
		CartProduct cp = new CartProduct(product.name, product.id, product.imageUrl, product.description, product.price,username,1);
		
		cart_repo.save(cp);
		//showing the products page again 
		//addToCart Button also sends username and password.
        ModelAndView mv = new ModelAndView();
		
		List<User>UserList;
		UserList=  repo.findByUsername(username);
		
		if(UserList.isEmpty())
		{
			mv.setViewName("user_incorrect.jsp");
			return mv;	
		}
		
		User user= UserList.get(0);
		
		List<Products> productList = product_repo.findAll();
	
		if(user.passwordmatch(password))
		{
			mv.addObject("user", user);
			mv.addObject("product", productList);
			mv.setViewName("Products.jsp");
			return mv;
		}
		else
		{
			mv.setViewName("user_incorrect.jsp");
			return mv;
		}
//		popup
		
		
	}
	
	
	
	@RequestMapping("/cart")
	public ModelAndView viewCart(/*
									 * @PathVariable ("username") String username, @PathVariable ("password") String
									 * password
									 */  @RequestParam String username, @RequestParam String password)
	{
		//showing cart page- loading from cart database by searching by username
		//username and password is received when Cart button is clicked.
		ModelAndView mv= new ModelAndView();
		
		
		//List<CartProduct> OldProdList = cart_repo.findByUsername(username);
	
		
		List<User>UserList;
		UserList=  repo.findByUsername(username);
		
		if(UserList.isEmpty())
		{
			mv.setViewName("user_incorrect.jsp");
			return mv;	
		}
		
	 User user= UserList.get(0);
		 
		 List<CartProduct> cp = cart_repo.findByUsername(username);
		
		    mv.addObject("user",user);
			 mv.addObject("cp",cp);
		
		      mv.setViewName("CartPage.jsp");
		     // System.out.println(username+"working"+password);
		     return mv;
		
		

	}
	@RequestMapping("/cartQuantity")
	//page run when Quantity changed in cart page
	public ModelAndView viewCartQuantity(/*
									 * @PathVariable ("username") String username, @PathVariable ("password") String
									 * password
									 */  @RequestParam String username, @RequestParam String quantity, @RequestParam String id)
	{
		  //System.out.println(username); 
		 
		  Products prd= new Products();
		  List<Products> Prod= product_repo.findById(id);
		  Products product= Prod.get(0);
		  
		  int qnt=Integer.parseInt(quantity); 
		  //if quantity more than stock prints error in console. need popup here
		   if(qnt<=product.quantity) {
			   
		   
		   
		   //update quantity of product in cart database , by selecting row based on username and product id.
		     List<CartProduct> updateProd= cart_repo.findByUsernameAndId(username, id);
			
			  CartProduct prod= updateProd.get(0); 
			  prod.setQuantity(qnt);
			  cart_repo.save(prod);
			// decrease quantity in product database.
			//If quantity selected by user equal to stock, delete product from database.
			  int t=product.getQuantity();
			  product.setQuantity(t-qnt);
			  product_repo.save(product);
			  if(product.getQuantity()==0) {
				  product_repo.delete(product);
			  }
		   }
		   else {
			   System.out.println("quantity exceeded");
			   //popup here
		   }
		 
		//show cart page again. need popup?
		ModelAndView mv= new ModelAndView();
		
		
		
		
		List<User>UserList;
		UserList=  repo.findByUsername(username);
	
		
		  if(UserList.isEmpty()) { mv.setViewName("user_incorrect.jsp"); return mv; }
		  
		  User user= UserList.get(0);
		 
		 
		 List<CartProduct> cp = cart_repo.findByUsername(username);
		
		     mv.addObject("user",user);
			 mv.addObject("cp",cp);
		
		      mv.setViewName("CartPage.jsp");
		     // System.out.println(username+"working"+password);
		     return mv;
		
		

	}
	
	//checkout page . receive username and password when user clicks checkout button
	@RequestMapping("/Checkout")	
	public ModelAndView checkout(@RequestParam String username , @RequestParam String password) {
		
		 ModelAndView mv= new ModelAndView();
		 List<User>UserList;
			UserList=  repo.findByUsername(username);
		
			
			  if(UserList.isEmpty()) { mv.setViewName("user_incorrect.jsp"); return mv; }
			  
			  User user= UserList.get(0);
		//uses Price class from service package. Created to calculate total price. 
	    //Pass object of Price class to modelandview . 
		 Price calcPrice= new Price();
		 int TotalPrice=0;
		 List<CartProduct> cp = cart_repo.findByUsername(username);
		 
		 for(CartProduct prod : cp) {
			 int qnt=prod.getQuantity(); 
			TotalPrice=TotalPrice + prod.price * qnt;
		 }
		 calcPrice.setTotalPrice(TotalPrice);
		 mv.addObject("User",user);
		 mv.addObject("TotalPrice",calcPrice);
		 mv.addObject("cp",cp);
		 mv.setViewName("Checkout.jsp");
		
		return mv;
	}
	@RequestMapping("/removeproduct")	
	public ModelAndView removeproduct(@RequestParam String username , /*@RequestParam String password*/  @RequestParam String id) {
		
		 ModelAndView mv= new ModelAndView();
	     	 List<User>UserList;
			 UserList=  repo.findByUsername(username);
		
			
			  if(UserList.isEmpty())
			  { mv.setViewName("user_incorrect.jsp"); return mv; }
			  
			  User user= UserList.get(0);
		
			  List<CartProduct> removeProd= cart_repo.findByUsernameAndId(username,id);
			  CartProduct removeprod=removeProd.get(0);
			  cart_repo.delete(removeprod);
			  
			  
			  List<Products> Prod= product_repo.findById(id);
			  if(Prod.isEmpty()) {
				  Products p = new Products(removeprod.name, removeprod.id, removeprod.imageUrl, removeprod.description, removeprod.price,removeprod.getQuantity());
					
				  product_repo.save(p);
			  }
			  else {				  
				  Products product= Prod.get(0);
				  int t=product.getQuantity();
				  product.setQuantity(t+removeprod.getQuantity());
				  product_repo.save(product);
			  }
			  
			  Price calcPrice= new Price();
		 int TotalPrice=0;
		 List<CartProduct> cp = cart_repo.findByUsername(username);
		 
		 for(CartProduct prod : cp) {
			 int qnt=prod.getQuantity(); 
			TotalPrice=TotalPrice + prod.price * qnt;
		 }
		 calcPrice.setTotalPrice(TotalPrice);
		 mv.addObject("user",user);
		 mv.addObject("TotalPrice",calcPrice);
		 mv.addObject("cp",cp);
		 mv.setViewName("Checkout.jsp");
		
		return mv;
	}
	
	
	@RequestMapping("/cartprodremove")	
	public ModelAndView cartprodremove(@RequestParam String username , @RequestParam String password, @RequestParam String id) {
		
		 ModelAndView mv= new ModelAndView();
	     	 List<User>UserList;
			 UserList=  repo.findByUsername(username);
		
			
			  if(UserList.isEmpty())
			  { mv.setViewName("user_incorrect.jsp"); return mv; }
			  
			  User user= UserList.get(0);
		
			  List<CartProduct> removeProd= cart_repo.findByUsernameAndId(username,id);
			  CartProduct removeprod=removeProd.get(0);
			  cart_repo.delete(removeprod);
			  
			  
			  List<Products> Prod= product_repo.findById(id);
			  if(Prod.isEmpty()) {
				  Products p = new Products(removeprod.name, removeprod.id, removeprod.imageUrl, removeprod.description, removeprod.price,removeprod.getQuantity());
					
				  product_repo.save(p);
			  }
			  else {				  
				  Products product= Prod.get(0);
				  int t=product.getQuantity();
				  product.setQuantity(t+removeprod.getQuantity());
				  product_repo.save(product);
			  }
			  Price calcPrice= new Price();
				 int TotalPrice=0;
				 List<CartProduct> cp = cart_repo.findByUsername(username);
				 
				 for(CartProduct prod : cp) {
					 int qnt=prod.getQuantity(); 
					TotalPrice=TotalPrice + prod.price * qnt;
				 }
				 calcPrice.setTotalPrice(TotalPrice);
				 mv.addObject("user",user);
				 mv.addObject("TotalPrice",calcPrice);
				 mv.addObject("cp",cp);
				 mv.setViewName("CartPage.jsp");
		return mv;
	}
	
	
	
	
	
}
