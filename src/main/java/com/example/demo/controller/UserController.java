package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.method.support.ModelAndViewContainer;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Products;
import com.example.demo.User;
import com.example.demo.dao.ProductsRepo;
import com.example.demo.dao.UserRepo;

@Controller
public class UserController {

	@Autowired
	UserRepo repo;
	
	@Autowired
	ProductsRepo product_repo;
	
	@RequestMapping("/signin")
	public String signinOption()
	{
		return "signinOption.jsp";
		
	}
	
	@RequestMapping("/user_signin")
	
	
	public String userSignin()
	{
		return "userSignin.jsp";
	}
	
	
	@RequestMapping("/newUserRegistration")
	public String newUserRegistration(User user)
	{
		
		return "userRegistration.jsp";
		
	}
	
	@RequestMapping("/checkUsername")
	
	public ModelAndView ModelAndView(@RequestParam String username)
	{
		ModelAndView mv = new ModelAndView();
		if(username.length()==0)
		{
			mv.setViewName("userRegistration.jsp");
			return mv;
		}
		
		List<User>UserList;
		UserList=  repo.findByUsername(username);
		
		if(UserList.isEmpty())
		{
			User tempuser= new User();
			tempuser.setUsername(username);
			mv.addObject("user", tempuser);
			mv.setViewName("userRegUsernameAvailible.jsp");
		}
		else
		{
			mv.setViewName("userRegistration.jsp");
		}
		
		
		return mv;
	}
	

	@RequestMapping("/getUser")
	public ModelAndView getUser(@PathVariable("username") @RequestParam String username, @RequestParam String password)
	{
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
//		return "Page Working";
		
	}
	
	
	
	
	@RequestMapping("/registerUser")
	public String resgisterUser(User user)
	{
		repo.save(user);
		return "AfterUserReg.jsp";
	}
	
	@RequestMapping("/getDetails")
	public ModelAndView getDetails(String  username)
	{
		List<User>UserList;
		UserList=  repo.findByUsername(username);
		User user= UserList.get(0);
//		System.out.println(user.toString());
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("user",user);
		mv.setViewName("UserDetails.jsp");
		
		return mv;
	}
	
	@RequestMapping("/editUserDetails")
	public ModelAndView editUserDetails(String  username)
	{
		List<User>UserList;
		UserList=  repo.findByUsername(username);
		User user= UserList.get(0);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user",user);
		mv.setViewName("EditUserInfo.jsp");
		
		
		return mv;
	}
	
	@RequestMapping("/saveUserDetails")
	public String saveUserDetails(User user)
	{
		String s= user.username;
		List<User>UserList;
		UserList=  repo.findByUsername(s);
		User user1= UserList.get(0);
		
		User user_new= user1.editDetails(user.username, user.idNumber, user.email, user.mobileNumber, user.hostelName, user.roomNumber);
		repo.delete(user1);
		repo.save(user_new);

		return "EditUserDetailsConfirmation.jsp";
	}
	
	@RequestMapping("/editUserPassword")
	public ModelAndView editUserPassword(String  username)
	{
		List<User>UserList;
		UserList=  repo.findByUsername(username);
		User user= UserList.get(0);
		ModelAndView mv = new ModelAndView();
		mv.addObject("user",user);
		mv.setViewName("EditPassword.jsp");
		
		
		return mv;
	}
	
	@RequestMapping("/EditPassword")
	
	public String editPassword(String username,String old_,String new_)
	{
		List<User>UserList;
		UserList=  repo.findByUsername(username);
		User user= UserList.get(0);
		
		
		if(user.passwordmatch(old_))
		{
			User user_pass_change= user.editPassword(new_);
			repo.delete(user);
			repo.save(user_pass_change);
			return "EditUserDetailsConfirmation.jsp";
			
		}
		else
		{
			return"password_change_fail.jsp";
		}
		
		
		
		
	}
	
	
	
	
	
//	Do this after everything Done
	
//	@RequestMapping("/user/{username}")
//	
//	public String getUser(@PathVariable ("username") String username )
//	{	
//		return "userpage.jsp";
//		
//	}
//	
//	@RequestMapping("/userlogin_incorrect")
//	
//	public String user_incorrect()
//	{	
//		return "user_incorrect.jsp";
//		
//	}

	
	
}
