package com.shopwebsite.entity;



public class Product {
	
	private int id;
	private String name;
	private String description;
	private String images;
	
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	private int price;
	private int discountprice;
	private ProductType pt;
	//一对多关联关系（类型设置为）
	public ProductType getPt() {
		return pt;
	}
	public void setPt(ProductType pt) {
		this.pt = pt;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getDiscountprice() {
		return discountprice;
	}
	public void setDiscountprice(int discountprice) {
		this.discountprice = discountprice;
	}
	
}
