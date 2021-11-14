package com.example.demo.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.example.demo.Faq;
import com.example.demo.User;
import com.example.demo.dao.Faqrepo;

@Controller
public class FaqController {
	
	@Autowired
	 Faqrepo repo;

	@RequestMapping("/addFaq")
	
	public String addFaq(Faq faq) {
		
		repo.save(faq);
		
		
		return "AddFaq.jsp";
	}
	@RequestMapping("/Faq")
	public ModelAndView getFaq(){
		//ModelAndView mv= new ModelAndView();
		//mv.addObject("obj",faq);
		//mv.setViewName("ShowFaq.jsp");
		//return mv;
		List<Faq>FaqList;
		FaqList=  repo.findAll();
		
//		System.out.println(user.toString());
		
		ModelAndView mv = new ModelAndView();
		mv.addObject("FaqList",FaqList);
		mv.setViewName("ShowFaq.jsp");
		return mv;
	}
}