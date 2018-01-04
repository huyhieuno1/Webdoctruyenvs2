package group1.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import group1.util.HibernateUtil;


@Controller
public class PublicController {

	@RequestMapping(value="/" , method = RequestMethod.GET)
	public ModelAndView displayIndex(){

		return new ModelAndView("index");
	}
	@RequestMapping(value="/category" , method = RequestMethod.GET)
	public ModelAndView displayCategory(){
		
		return new ModelAndView("category");
	}
	@RequestMapping(value="/detail" , method = RequestMethod.GET)
	public ModelAndView displayDetail(){
		
		return new ModelAndView("inner");
	}
	@RequestMapping(value="/register" , method = RequestMethod.GET)
	public ModelAndView displayRegister(){
		
		return new ModelAndView("register");
	}
	@RequestMapping(value="/login" , method = RequestMethod.GET)
	public ModelAndView displayLogin(){
		
		return new ModelAndView("login");
	}
	
}
