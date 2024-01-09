 	package com.devpro.JavaWeb.controller.administrator;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.ProductSearch;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.services.impl.CategoryService;
import com.devpro.JavaWeb.services.impl.ContactService;
import com.devpro.JavaWeb.services.impl.ProductService;

@Controller
public class AdminProductController extends BaseController {
	@Autowired
	private ProductService productService;
	
	@RequestMapping(value = {"/admin/product/management/{productId}"}, method = RequestMethod.GET)
	public String adminProductDetail(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response,
					  @PathVariable("productId") int productId
					  )
	throws IOException{
		Product productDaProduct = productService.getById(productId);
		model.addAttribute("product", productDaProduct);

		//Trả về view
		return "administrator/product_management";
	}
	
	
	@RequestMapping(value = {"/admin/product/management"}, method = RequestMethod.GET)
	public String adminProject(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response)
	throws IOException{
		//Khởi tạo 1 product (entity) mới
		Product newProduct = new Product();
		model.addAttribute("product", newProduct);

		//Trả về view
		return "administrator/product_management";
	}
	
	@RequestMapping(value = { "/admin/product/management/saveOrUpdate" }, method = RequestMethod.POST)
	public String addOrUpdateStore(final Model model, 
							   	   final HttpServletRequest request,
						  	   	   final HttpServletResponse response,
						  	   	   @ModelAttribute("product") Product product,
						  	   	   @RequestParam("productAvatar") MultipartFile productAvatar,
								   @RequestParam("productPictures") MultipartFile[] productPictures) throws IOException {
		if(product.getId() == null || product.getId() <= 0) {
			productService.addProduct(product, productAvatar, productPictures);
		} 
			  else { productService.editProduct(product, productAvatar, productPictures); }
			 
		// trả về view(list), sử dụng redirect để chuyển hướng request.
		return "redirect:/admin/product/list";
	}
	
	@RequestMapping(value = { "/admin/product/list" }, method = RequestMethod.GET)
	public String adminProductList(final Model model, 
								   final HttpServletRequest request,
								   final HttpServletResponse response) 
		throws IOException {
		
		String keyword = request.getParameter("keyword");
		String categoryId = request.getParameter("categoryId");
		
		Integer page = 1;
		try {
			page = Integer.parseInt(request.getParameter("page"));
		} catch (Exception e) {}
		ProductSearch searchModel = new ProductSearch();
		searchModel.setKeyword(keyword);
		searchModel.setCategoryId(categoryId);
		searchModel.setPage(page);
		model.addAttribute("product", productService.searchProduct(searchModel));
		model.addAttribute("searchModel",searchModel);
		
		
		return "administrator/product_list";
	
	}
	
	@RequestMapping(value = {"/admin/product/delete/{productId}"}, method = RequestMethod.GET)
	public String delete(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response,
					  @PathVariable("productId") int productId
					  )
	throws IOException{
		productService.deleteProduct(productId);
		//Trả về view
		return "redirect:/admin/product/list";
	}

	
}
	

