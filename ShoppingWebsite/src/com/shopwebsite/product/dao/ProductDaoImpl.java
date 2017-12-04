package com.shopwebsite.product.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import com.shopwebsite.entity.Product;

@Repository
public class ProductDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	 public Product getProductByid(int id) {
	        String hql = "from Product where id=?";
	        Query query = sessionFactory.getCurrentSession().createQuery(hql);
	        query.setParameter(0, id);
	        return (Product) query.uniqueResult();
	    }
	 //通过产品类别id来查找商品
	 public Product getProductBytypeid(int typeid ){
		 String hql="from Product where typeid=?";
		 Query query =sessionFactory.getCurrentSession().createQuery(hql);
		 query.setParameter(0, typeid);
		 
		 return (Product) query.uniqueResult();
		 
	 }
	 
	 //查询所有产品（用于展示产品，即产品列表）
	 public List<Product> getAllproduct(){
	
		String hql="from Product";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();
		
	
		
		 
	 }

}
