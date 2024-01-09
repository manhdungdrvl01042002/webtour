package com.devpro.JavaWeb.dto;

import com.devpro.JavaWeb.services.BaseService;

public class ProductSearch extends BaseSearchModel{
	private String keyword;
	private String categoryId;
	private String seo;

	public String getKeyword() {
		return keyword;
	}

	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}

	public String getCategoryId() {
		return categoryId;
	}

	public void setCategoryId(String categoryId) {
		this.categoryId = categoryId;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}
	
	
}
