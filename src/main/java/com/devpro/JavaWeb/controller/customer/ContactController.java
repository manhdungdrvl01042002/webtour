package com.devpro.JavaWeb.controller.customer;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.JavaWeb.controller.BaseController;
import com.devpro.JavaWeb.dto.ContactUs;
import com.devpro.JavaWeb.model.Contact;
import com.devpro.JavaWeb.services.impl.ContactService;

@Controller
public class ContactController extends BaseController {
	
	@Autowired
	private ContactService contactService;
//	@RequestMapping(value= {"/contact"},method = RequestMethod.GET) 
//	  public String contact(final Model model, 
//	  						final HttpServletRequest request, 
//							final HttpServletResponse response){ 
//		return "customer/contact"; 
//		}
//	@RequestMapping(value= {"/contact"},method = RequestMethod.POST) 
//	  public String contactPost(final Model model, 
//	  						final HttpServletRequest request, 
//							final HttpServletResponse response){ 
//		
////		cách 3  đọc dữ liệu từ request thông qua html form
//		String firstname = request.getParameter("firstname");
//		System.out.println("firstname: " + firstname);
//		return "customer/contact"; 
//		}
	
	
//	spring-form
	@RequestMapping(value= {"/contact"},method = RequestMethod.GET) 
	  public String contact(final Model model, 
	  						final HttpServletRequest request, 
							final HttpServletResponse response){ 
		ContactUs contactUs = new ContactUs(null, null, null);
		model.addAttribute("contactUs", contactUs);
		return "customer/contact"; 
		}
	@RequestMapping(value= {"/contact"},method = RequestMethod.POST) 
	  public String contactPost(final Model model, 
	  						final HttpServletRequest request, 
							final HttpServletResponse response,
							final @ModelAttribute ContactUs contactUs,
							@RequestParam("fileContact") MultipartFile contactUsFile
			  ){ 
		System.out.println(contactUsFile.getOriginalFilename());
	
		Contact contact = new Contact();
		contact.setFirstName(contactUs.getFirstname());
		contact.setEmail(contactUs.getEmail());
		contact.setSubject(contactUs.getSubject());
		contactService.saveOrUpdate(contact);//Lưu vào database
		//reset lại form
		model.addAttribute("contactUs",new ContactUs(null, null, null));
		return "customer/contact"; 
		}
	
	@RequestMapping(value= {"/mona"},method = RequestMethod.GET) 
	  public String mona(final Model model, 
	  						final HttpServletRequest request, 
							final HttpServletResponse response){ 
		ContactUs contactUs = new ContactUs(null, null, null);
		model.addAttribute("contactUs", contactUs);
		return "customer/mona"; 
		}
	@RequestMapping(value= {"/mona"},method = RequestMethod.POST) 
	  public String monaPost(final Model model, 
	  						final HttpServletRequest request, 
							final HttpServletResponse response,
							final @ModelAttribute ContactUs contactUs,
							@RequestParam("fileContact") MultipartFile contactUsFile
			  ){ 
		
		Contact contact = new Contact();
		contact.setFirstName(contactUs.getFirstname());
		contact.setEmail(contactUs.getEmail());
		contact.setSubject(contactUs.getSubject());
		contactService.saveOrUpdate(contact);
		//reset lại form
				model.addAttribute("contactUs",new ContactUs(null, null, null));
		return "customer/mona"; 
		}
	
	
	
	
	
//	Sử dụng ajax
//	@RequestMapping(value= {"/contact"},method = RequestMethod.GET) 
//	  public String contact(final Model model, 
//	  						final HttpServletRequest request, 
//							final HttpServletResponse response){ 
//		return "customer/contact"; 
//		}
//	@RequestMapping(value= {"/ajax/contact"},method = RequestMethod.POST)
//	  public ResponseEntity<Map<String,Object>> ajax_contact(final Model model,
//	  														final HttpServletRequest request, 
//															final HttpServletResponse response,
//	  														final @RequestBody ContactUs contactUs) {
//	 		 System.out.println(contactUs.getFirstname()); 
//	 		 System.out.println(contactUs.getEmail());
//	 		 System.out.println(contactUs.getSubject());
//			 Map<String, Object> jsonResult = new HashMap<String , Object>(); 
//			 jsonResult.put("statusCode",200);
//	         jsonResult.put("statusMessage","Cảm ơn bạn " + contactUs.getFirstname() + " Chúng tôi sẽ liên hệ sớm nhất"); 
//	        
//			return ResponseEntity.ok(jsonResult); 
//			}
//	
//	@RequestMapping(value= {"/mona"},method = RequestMethod.GET) 
//	  public String mona(final Model model, 
//	  						final HttpServletRequest request, 
//							final HttpServletResponse response){ 
//		return "customer/contact"; 
//		}
//	@RequestMapping(value= {"/ajax/mona"},method = RequestMethod.POST)
//	  public ResponseEntity<Map<String,Object>> ajax_mona(final Model model,
//	  														final HttpServletRequest request, 
//															final HttpServletResponse response,
//	  														final @RequestBody ContactUs contactUs) {
//	 		 System.out.println(contactUs.getFirstname()); 
//	 		 System.out.println(contactUs.getEmail());
//	 		 System.out.println(contactUs.getSubject());
//			 Map<String, Object> jsonResult = new HashMap<String , Object>(); 
//			 jsonResult.put("statusCode",200);
//	         jsonResult.put("statusMessage","Cảm ơn bạn " + contactUs.getFirstname() + " Chúng tôi sẽ liên hệ sớm nhất"); 
//	        
//			return ResponseEntity.ok(jsonResult); 
//			}
}
