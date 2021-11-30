package com.example.demo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Admin;

@Controller
public class AdminController {

	@RequestMapping("/admin_signin")

	public String adminSignin() {
		return "adminSignin.jsp";
	}

	@RequestMapping("/getAdmin")
	public ModelAndView getUser(@PathVariable("username") @RequestParam String username,
			@RequestParam String password) {
		ModelAndView mv = new ModelAndView();

		Admin admin = new Admin();
		if (admin.passwordmatch(password) && admin.adminNameMatch(username)) {
			mv.addObject("admin", admin);
			mv.setViewName("adminpage.jsp");
			return mv;
		} else {
			mv.setViewName("admin_incorrect.jsp");
			return mv;
		}
	}
}
