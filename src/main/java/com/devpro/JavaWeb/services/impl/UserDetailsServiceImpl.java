package com.devpro.JavaWeb.services.impl;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import com.devpro.JavaWeb.model.User;
import com.devpro.JavaWeb.services.BaseService;

@Service
public class UserDetailsServiceImpl extends BaseService<User> implements UserDetailsService {

	@Override
	protected Class<User> clazz() {
		return User.class;
	}
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// connect tới db và lấy user theo username
		String sql = "select * from user u where u.username = '" + username + "' ";
		User user = this.getEntityByNativeSQL(sql);
		
		return user;
	}


}
