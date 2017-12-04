package com.shopwebsite.user.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.*;
//import com.alibaba.fastjson.JSON;
//import com.alibaba.fastjson.JSONArray;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.hibernate.SessionFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.shopwebsite.entity.User;
import com.shopwebsite.user.service.UserServiceImpl;
import com.sun.javafx.collections.MappingChange.Map;

@Controller
@RequestMapping("/user")
public class UserControllerImpl {

	@Resource
	private UserServiceImpl userServiceImpl;

	@RequestMapping("/doLogin")
	public String doLogin(@RequestParam("username") String usernameOrEmail, @RequestParam("password") String password,
			HttpSession httpSession, Model model) {

		System.out.println("我接收到了登录请求" + usernameOrEmail + " " + password);

		User user = userServiceImpl.getUser(usernameOrEmail);
		if (user == null) {
			model.addAttribute("errorpage", "该用户不存在");
			return "user/login";
		} else {

			if (user.getPassword().equals(password)) {
				model.addAttribute("errorpage", "");

				httpSession.setAttribute("currentUser", user);
				return "user/index";
			} else {
				model.addAttribute("errorpage", "密码不相同，请重新输入");

				return "user/login";
			}
		}

	}

	@RequestMapping(value = "/doRegister", method = RequestMethod.POST)
	public String doRegister(@RequestParam("username") String username, @RequestParam("email") String email,
			@RequestParam("password") String password, @RequestParam("confpassword") String confpassword, Model model) {

		String result = "fail";
		
		if (!password.isEmpty() && !username.isEmpty() && !email.isEmpty() && !confpassword.isEmpty()) {
			User user = this.userServiceImpl.getUser(username);
			User u = new User();
			if(user!=null){
				//存在

				model.addAttribute("error1", "该用户已存在");
				result ="/user/register";
			}else{
				if(password.equals(confpassword)){

					model.addAttribute("error1", "");
					u.setUsername(username);
					u.setEmail(email);
					u.setPassword(password);
					
					this.userServiceImpl.addUser(u);
					result = "/user/login";
				}else{

					model.addAttribute("error1", "两次密码不同 请重新输入");
					result ="/user/register";
					
				}
			}
		}else{
			model.addAttribute("error1", "不能为空");
			result = "/user/register";
		}
		/*
		 * User user = userServiceImpl.getUser(username);
		 * 
		 * if (user != null) { model.addAttribute("errorPage", "register");
		 * result = "register"; } else { user = userServiceImpl.getUser(email);
		 * if (user != null) result = "emailExist"; else { User user1 = new
		 * User(); user1.setUsername(username); System.out.println(username);
		 * user1.setEmail(email); System.out.println(email);
		 * 
		 * userServiceImpl.addUser(user1); user1 =
		 * userServiceImpl.getUser(username); User user2 = new User();
		 * user2.setId(user1.getId());
		 * 
		 * user2.setPassword(password);
		 * 
		 * userServiceImpl.addUser(user); result = "success"; } }
		 * 
		 */ return result;
	}

	// @RequestMapping("/login")
	// public String login(@RequestParam("userName") String userName,
	// @RequestParam("password") String password,
	// Model model, HttpSession session){
	//
	// User lu=this.userServiceImpl.getUser(userName);
	// if(lu!=null){
	// session.setAttribute("lu", lu);
	// return "index";
	// }else{
	// model.addAttribute("errorinfo", "您的账号密码不正确！");
	// return "login";
	// }
	// }
	//
	//
	//
	// @RequestMapping(value = "/doRegister", method = RequestMethod.POST)
	//
	// public String doRegister(User user){
	// if(user !=null){
	// return "login";
	// }else{
	// userServiceImpl.addUser(user);
	// return "register";
	//
	//
	// }
	//
	//
	// }
	//
	//
	//
	// @RequestMapping(value = "/doUpdate", method = RequestMethod.POST)
	//
	// public Map<String, Object> doUpdate(String userName, String email, String
	// nickName, String password, String phoneNumber, int sex, String birthday,
	// String postNumber, String address) {
	// String result = "fail";
	// User user = userServiceImpl.getUser(userName);
	//
	// userServiceImpl.updateUser(user);
	// User user1 = userServiceImpl.getUser(user1.getId());
	//
	// user1.setPassword(password);
	// String confpassword;
	// user1.setConfpassword(confpassword);
	// user1.setPhoneNumber(phoneNumber);
	//
	// userServiceImpl.updateUser(user1);
	// result = "success";
	// Map<String, Object> resultMap = new HashMap<String, Object>();
	// resultMap.put("result", result);
	// return resultMap;
	// }
	//
	// @RequestMapping(value = "/getAllUser", method = RequestMethod.POST)
	//
	// public Map<String, Object> getAllUser() {
	//// System.out.println("我接收到了获取用户请求");
	// List<User> userList = new ArrayList<>();
	// userList = userServiceImpl.getAllUser();
	// String allUsers = JSONArray.toJSONString(userList);
	//// System.out.println("我返回的结果是"+allUsers);
	// Map<String,Object> resultMap = (Map<String, Object>) new
	// HashMap<String,Object>();
	// ((HashMap<String, Object>) resultMap).put("allUsers",allUsers);
	// return resultMap;
	// }
	//
	// @RequestMapping(value = "/deleteUser", method = RequestMethod.POST)
	//
	// public Map<String, Object> deleteUser(int id) {
	// String result ="fail";
	// if(userServiceImpl.deleteUser(id)){
	// if(userServiceImpl.deleteUser(id)){
	// result="success";
	// }
	// }
	// Map<String,Object> resultMap = (Map<String, Object>) new
	// HashMap<String,Object>();
	// ((HashMap<String, Object>) resultMap).put("result",result);
	// return resultMap;
	// }
	//
	// @RequestMapping(value = "/getUserAddressAndPhoneNumber", method =
	// RequestMethod.POST)
	//
	// public Map<String, Object> getUserPhoneNumber(int id) {
	//
	// String phoneNumber = userServiceImpl.getUser(id).getPhoneNumber();
	// HashMap<String, Object> resultMap = new HashMap<String,Object>();
	//
	// resultMap.put("phoneNumber",phoneNumber);
	// return (Map<String, Object>) resultMap;
	// }
	//
	// @RequestMapping(value = "/doLogout")
	// public String doLogout(HttpSession httpSession){
	// httpSession.setAttribute("currentUser","");
	// return "redirect:login";
	// }
	//
	// @RequestMapping(value = "/getUserById", method = RequestMethod.POST)
	//
	// public Map<String, Object> getUserById(int id) {
	// User user = userServiceImpl.getUser(id);
	// String result = JSON.toJSONString(user);
	// Map<String,Object> resultMap = (Map<String, Object>) new
	// HashMap<String,Object>();
	// ((HashMap<String, Object>) resultMap).put("result",result);
	// return resultMap;
	// }
	//
	// @RequestMapping(value = "/getUserDetailById", method =
	// RequestMethod.POST)
	//
	// public Map<String, Object> getUserDetailById(int id) {
	// User user = userServiceImpl.getUser(id);
	// String result = JSON.toJSONString(user);
	// Map<String,Object> resultMap = (Map<String, Object>) new
	// HashMap<String,Object>();
	// ((HashMap<String, Object>) resultMap).put("result",result);
	// return resultMap;
	// }

}
