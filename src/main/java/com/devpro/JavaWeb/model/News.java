package com.devpro.JavaWeb.model;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "news")
public class News extends BaseEntity {
	@Column(name = "title", length = 1000, nullable = false)
	private String title;
	@Column(name = "details", length = 1000, nullable = false)
	private String details;
	@Column(name = "avatar", nullable = true)
	private String avatar;
	
	@ManyToOne(fetch = FetchType.EAGER, cascade = CascadeType.ALL)
	@JoinColumn(name = "category_id")
	private Category category;
	
	@OneToMany(cascade = CascadeType.ALL, 
			   fetch = FetchType.EAGER, 
			   mappedBy = "news")
	private Set<NewsImages> newsImages = new HashSet<NewsImages>();

	public Set<NewsImages> getNewsImages() {
		return newsImages;
	}

	public void setNewsImages(Set<NewsImages> newsImages) {
		this.newsImages = newsImages;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getAvatar() {
		return avatar;
	}

	public void setAvatar(String avatar) {
		this.avatar = avatar;
	}

	public Category getCategory() {
		return category;
	}

	public void setCategory(Category category) {
		this.category = category;
	}
	

	
	
}
