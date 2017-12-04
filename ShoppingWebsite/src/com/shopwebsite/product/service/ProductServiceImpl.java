package com.shopwebsite.product.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.shopwebsite.entity.Product;
import com.shopwebsite.product.dao.ProductDaoImpl;

@Service
public class ProductServiceImpl {
	@Resource
	private ProductDaoImpl productDaoImpl;
	  public Product getProductByid(int id) {
	        return productDaoImpl.getProductByid(id);
	}
	
	  public Product getProductBytypeid(int typeid) {
	        return productDaoImpl.getProductBytypeid(typeid);
	}
	  public List<Product> getAllProduct() {
	        return  productDaoImpl.getAllproduct();
	}
}
