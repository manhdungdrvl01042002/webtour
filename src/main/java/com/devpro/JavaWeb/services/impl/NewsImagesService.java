package com.devpro.JavaWeb.services.impl;

import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.model.NewsImages;
import com.devpro.JavaWeb.services.BaseService;
@Service
public class NewsImagesService extends BaseService<NewsImages> {
	@Override
	protected Class<NewsImages> clazz(){
		return NewsImages.class;
	}
}
