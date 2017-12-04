package com.shopwebsite.user.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.shopwebsite.entity.User;
import com.shopwebsite.user.dao.UserDaoImpl;
@Service
@Transactional(readOnly=true)
public class UserServiceImpl {
	 @Resource
	    private UserDaoImpl userDaoImpl;

	    
	    public User getUser(int id) {
	        return userDaoImpl.getUser(id);
	    }

	   
	    public User getUser(String usernameOrEmail) {
	        return userDaoImpl.getUser(usernameOrEmail);
	    }

	    public User addUser(User user) {
	    	userDaoImpl.addUser(user);
			return user;
	    }

	   
	    public boolean deleteUser(int id) {
	        return userDaoImpl.deleteUser(id);
	    }

	
	    public boolean updateUser(User user) {
	        return userDaoImpl.updateUser(user);
	    }

	 
	    public List<User> getAllUser() {
	        return userDaoImpl.getAllUser();
	}

}
