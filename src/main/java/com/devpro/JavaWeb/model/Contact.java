package com.devpro.JavaWeb.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;



@Entity
@Table (name = "contact")
public class Contact extends BaseEntity {
	@Column (name = "first_name" ,length = 45 ,nullable = false)
	private String firstName;
	
	@Column (name = "email" ,length = 45 ,nullable = false)
	private String email;
	
	@Column (name = "subject" ,length = 1000 ,nullable = false)
	private String subject;
	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}
	

}
