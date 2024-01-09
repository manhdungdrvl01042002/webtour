package com.devpro.JavaWeb.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.OneToMany;
import javax.persistence.Table;
@Entity
@Table(name = "category")
public class Category extends BaseEntity{
	@Column (name = "name" ,length = 20 ,nullable = false)
	private String name;
	
	@Column (name = "description" ,length = 100 ,nullable = false)
	private String description;
	
	@Column (name = "seo" ,length = 1000 ,nullable = true)
	private String seo;
	
	@OneToMany(cascade = CascadeType.ALL,
		fetch = FetchType.LAZY,
		mappedBy = "category")
	private Set<Product> product = new HashSet<Product>();
	
	@OneToMany(cascade = CascadeType.ALL,
			fetch = FetchType.LAZY,
			mappedBy = "category")
		private Set<News> news = new HashSet<News>();

	public Set<News> getNews() {
		return news;
	}

	public void setNews(Set<News> news) {
		this.news = news;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSeo() {
		return seo;
	}

	public void setSeo(String seo) {
		this.seo = seo;
	}

	public Set<Product> getProduct() {
		return product;
	}

	public void setProduct(Set<Product> product) {
		this.product = product;
	}
	
	
}
