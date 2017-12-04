package com.shopwebsite.product.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.shopwebsite.entity.Product;
import com.shopwebsite.product.service.ProductServiceImpl;

@Controller
@RequestMapping("/product")
public class ProductControllerImpl {
	@Resource
	private ProductServiceImpl productServiceImpl;
	 @RequestMapping(value = "/showItem")
	 public String showItem(Model model){
		
		 List<Product> itemsList = productServiceImpl.getAllProduct();
		 model.addAttribute("items", itemsList);
		 return "/user/product-list";
		 
		 
	 }
	
	
	
//	 @RequestMapping(value = "/getAllProducts")
//	 public List<Product> getAllProducts(){
//	        
//	        List<Product> productList = productServiceImpl.getAllProduct();
//			return "product-list.jsp";
//	        
	        
//	}

}
