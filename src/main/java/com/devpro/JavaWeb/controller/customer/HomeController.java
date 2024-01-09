package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.services.impl.NewsService;
import com.devpro.JavaWeb.services.impl.ProductService;

@Controller
public class HomeController extends BaseController{
	@Autowired
	private ProductService productService;
	
	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value = {"/home"}, method = RequestMethod.GET)
	public String home(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response)
	throws IOException{
		
		
		model.addAttribute("product", productService.ProductList());
		model.addAttribute("news", newsService.findAll());
		
		return "customer/index";
	}
	
	@RequestMapping(value = {"/finish"}, method = RequestMethod.GET)
	public String finish(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response)
	throws IOException{
		
		
		return "customer/finish";
	}
	
}
