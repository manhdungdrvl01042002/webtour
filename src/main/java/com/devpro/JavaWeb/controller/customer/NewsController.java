package com.devpro.JavaWeb.controller.customer;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.services.impl.NewsService;
@Controller
public class NewsController extends BaseController{
	@Autowired
	private NewsService newsService;
	@RequestMapping(value= {"/news"},method = RequestMethod.GET) 
	  public String news(final Model model, 
	  						final HttpServletRequest request, 
							final HttpServletResponse response){ 
		model.addAttribute("news", newsService.findAll());
		return "customer/news"; 
		}
}
