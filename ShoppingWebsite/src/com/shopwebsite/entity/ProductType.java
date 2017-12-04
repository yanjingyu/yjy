package com.shopwebsite.entity;

import java.util.HashSet;




public class ProductType {
	private int id;
	private String name;
	private HashSet<Product> productSet = new HashSet<Product>();
	public HashSet<Product> getProductSet() {
		return productSet;
	}

	public void setProductSet(HashSet<Product> productSet) {
		this.productSet = productSet;
	}

	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	
}
