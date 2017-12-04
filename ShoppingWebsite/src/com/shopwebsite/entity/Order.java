package com.shopwebsite.entity;

import com.shopwebsite.entity.User;

public class Order {
	private Integer id;
    private Double price;//价格
    private User user;
    
    public Integer getId() {
        return id;
    }
    public void setId(Integer id) {
        this.id = id;
    }
    public Double getPrice() {
        return price;
    }
    public void setPrice(Double price) {
        this.price = price;
    }
    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }
    

}
