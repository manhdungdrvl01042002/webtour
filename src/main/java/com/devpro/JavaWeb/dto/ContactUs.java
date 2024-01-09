package com.devpro.JavaWeb.dto;

public class ContactUs {
	private String firstname;
	private String email;
	private String subject;
	
	
	public ContactUs(String firstname, String email, String subject) {
		super();
		this.firstname = firstname;
		this.email = email;
		this.subject = subject;
	}
	public String getFirstname() {
		return firstname;
	}
	public void setFirstname(String firstname) {
		this.firstname = firstname;
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
