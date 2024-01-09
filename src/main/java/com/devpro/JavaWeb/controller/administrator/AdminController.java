package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.model.SaleOrderProducts;
import com.devpro.JavaWeb.services.impl.ContactService;
import com.devpro.JavaWeb.services.impl.ProductService;
import com.devpro.JavaWeb.services.impl.SaleOrderProductsService;
import com.devpro.JavaWeb.services.impl.SaleOrderService;



@Controller

public class AdminController extends BaseController{
	
	@Autowired
	private ContactService contactService;
	
	@Autowired
	private ProductService productService;
	
	
	@Autowired
	private SaleOrderService saleOrderService;
	
	@Autowired
	private SaleOrderProductsService saleOrderProductsService;
	@RequestMapping(value = {"/admin"}, method = RequestMethod.GET)
	public String admin(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response)
	throws IOException{
		return "administrator/admin";
	}
	
	@RequestMapping(value = {"/admin/customer"}, method = RequestMethod.GET)
	public String adminCustomer(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response)
	throws IOException{
		
		model.addAttribute("contact", contactService.findAll());
	
		return "administrator/customer";
	}
	@RequestMapping(value = {"/admin/project"}, method = RequestMethod.GET)
	public String adminProject(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response)
	throws IOException{
		
		model.addAttribute("saleOrderProducts", saleOrderProductsService.findAll());	
		return "administrator/project";
	}
	@RequestMapping(value = {"/admin/inventory"}, method = RequestMethod.GET)
	public String adminInventory(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response)
	throws IOException{
		return "administrator/inventory";
	}
	@RequestMapping(value = {"/admin/task"}, method = RequestMethod.GET)
	public String adminTask(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response)
	throws IOException{
		return "administrator/task";
	}
	
	@RequestMapping(value = {"/admin/sign-in"}, method = RequestMethod.GET)
	public String adminSignIn(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response)
	throws IOException{
		
		model.addAttribute("saleorder", saleOrderService.findAll());
		return "administrator/sign-in";
	}
}
