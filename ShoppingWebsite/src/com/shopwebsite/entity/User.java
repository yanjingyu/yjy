package com.shopwebsite.entity;

import java.util.HashSet;
import java.util.Set;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.criteria.Order;

import java.util.HashSet;
import java.util.Set;

 public class User {
		private int id;
		private String username;// 用户名
		private String password;// 密码
		private String email;// 电子邮箱
		
	    public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getUsername() {
		return username;
		}
		public void setUsername(String username) {
		this.username = username;
		}
		public String getPassword() {
		return password;
		}
		public void setPassword(String password) {
		this.password = password;
		}
		public String getEmail() {
		return email;
		}
		public void setEmail(String email) {
		this.email = email;
		}
	
	   
	}

