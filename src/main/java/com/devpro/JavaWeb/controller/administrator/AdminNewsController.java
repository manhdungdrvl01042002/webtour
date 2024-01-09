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
import com.devpro.JavaWeb.model.News;
import com.devpro.JavaWeb.model.Product;
import com.devpro.JavaWeb.services.impl.NewsService;

@Controller
public class AdminNewsController extends BaseController {
	@Autowired
	private NewsService newsService;
	
	@RequestMapping(value = {"/admin/news/management/{newsId}"}, method = RequestMethod.GET)
	public String adminnewsDetail(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response,
					  @PathVariable("newsId") int newsId
					  )
	throws IOException{
		News newsDaNews= newsService.getById(newsId);
		model.addAttribute("news", newsDaNews);

		//Trả về view
		return "administrator/news";
	}
	
	@RequestMapping(value = {"/admin/news/management"}, method = RequestMethod.GET)
	public String adminProject(final Model model,
					  final HttpServletRequest request,
					  final HttpServletResponse response)
	throws IOException{
		//Khởi tạo 1 product (entity) mới
		News newNews = new News();
		model.addAttribute("news", newNews);

		//Trả về view
		return "administrator/news";
	}
	
	@RequestMapping(value = { "/admin/news/management/saveOrUpdate" }, method = RequestMethod.POST)
	public String addOrUpdateStore(final Model model, 
							   	   final HttpServletRequest request,
						  	   	   final HttpServletResponse response,
						  	   	   @ModelAttribute("news") News news,
						  	   	   @RequestParam("newsAvatar") MultipartFile newsAvatar,
								   @RequestParam("newsPictures") MultipartFile[] newsPictures) throws IOException {
		if(news.getId() == null || news.getId() <= 0) {
			newsService.addNews(news, newsAvatar, newsPictures);
		} 
			  else { newsService.editNews(news, newsAvatar, newsPictures); }
			 
//		 trả về view(list), sử dụng redirect để chuyển hướng request.
		return "redirect:/admin/news/list";
	}
	
	@RequestMapping(value = { "/admin/news/list" }, method = RequestMethod.GET)
	public String adminNewsList(final Model model, 
							   	   final HttpServletRequest request,
						  	   	   final HttpServletResponse response)
						  	   	   throws IOException {
		model.addAttribute("news", newsService.findAll());

		return "administrator/news_list";
	}

}
