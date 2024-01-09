package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.Review;
import com.devpro.JavaWeb.services.impl.ContactService;
import com.devpro.JavaWeb.services.impl.NewsService;
import com.devpro.JavaWeb.services.impl.ProductService;

@Controller
public class ProductController extends BaseController{
	
	
	@Autowired
	private ProductService productService;
	
//	spring-form
	@RequestMapping(value= {"/product"},method = RequestMethod.GET) 
	  public String product(final Model model, 
	  						final HttpServletRequest request, 
							final HttpServletResponse response){ 
		Review review= new Review();
		model.addAttribute("review", review);
		return "customer/product"; 
		}
	@RequestMapping(value= {"/product"},method = RequestMethod.POST) 
	  public String productPost(final Model model, 
	  						final HttpServletRequest request, 
							final HttpServletResponse response,
							final @ModelAttribute Review review
							
			  ){ 
		System.out.println("Subject: " + review.getSubject());
		System.out.println("Firstname: " + review.getFirstname());
		System.out.println("Email: " + review.getEmail());		
		//reset lại form
		model.addAttribute("review",new Review());
		model.addAttribute("products", productService.findAll());
		return "customer/product"; 
		}
	
	@RequestMapping(value= {"/category-product"},method = RequestMethod.GET) 
	  public String categoryProduct(final Model model, 
	  						final HttpServletRequest request, 
							final HttpServletResponse response){ 
		model.addAttribute("product", productService.findAll());
		return "customer/category-product"; 
		}
	
}
