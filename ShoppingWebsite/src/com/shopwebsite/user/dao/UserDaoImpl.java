package com.shopwebsite.user.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.stereotype.Repository;

import com.shopwebsite.entity.User;

@Repository
public class UserDaoImpl {
	@Resource
	private SessionFactory sessionFactory;
	 public User getUser(int id) {
	        String hql = "from User where id=?";
	        Query query = sessionFactory.getCurrentSession().createQuery(hql);
	        query.setParameter(0, id);
	        return (User)query.uniqueResult();
	
	}
	 
	public User getUser(String usernameOrEmail) {
        String hql = "from User where email=?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setParameter(0, usernameOrEmail);
        if(query.uniqueResult() == null){
            hql = "from User where username=?";
            query = sessionFactory.getCurrentSession().createQuery(hql);
            query.setParameter(0, usernameOrEmail);
        }
        return (User)query.uniqueResult();
    }

    
    public void addUser(User user) {
    	Session session=sessionFactory.openSession();
    	 Transaction tx= session.beginTransaction();
        session.save(user);
        tx.commit();
        session.close();
    }

  
    public boolean deleteUser(int id) {
        String hql = "delete User where id=?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setParameter(0, id);
        return query.executeUpdate() > 0;
    }

    public boolean updateUser(User user) {
        String hql = "update User set name = ?,email=?,nickName=? where id=?";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        query.setParameter(0,user.getUsername());
        query.setParameter(1,user.getEmail());
        query.setParameter(2,user.getPassword());
        query.setParameter(3,user.getId());
       
        return query.executeUpdate() > 0;
    }


    public List<User> getAllUser() {
        String hql = "from User";
        Query query = sessionFactory.getCurrentSession().createQuery(hql);
        return query.list();
}

	
}