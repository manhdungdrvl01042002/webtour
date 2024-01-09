package com.devpro.JavaWeb.services.impl;

import org.springframework.stereotype.Service;
import com.devpro.JavaWeb.model.Category;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class CategoryService extends BaseService<Category> {
	@Override
	protected Class<Category> clazz(){
		return Category.class;
	}
	
}
