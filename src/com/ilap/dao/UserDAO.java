package com.ilap.dao;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ilap.model.User;

@Repository
public class UserDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void save(User person) {
		sessionFactory.getCurrentSession().save(person);
	}
	
	public User getUniqueUser(String username, String password) {
		
		List<User> users = new ArrayList<User>();
		 
		users = sessionFactory.getCurrentSession()
			.createQuery("from User where username=?")
			.setParameter(0, username)
			.list();
 
		if (users.size() > 0) {
			return users.get(0);
		} else {
			return null;
		}
	}

	@SuppressWarnings("unchecked")
	public List<User> fetchAll() {
		return sessionFactory.getCurrentSession().createQuery("from User").list();
	}
	
}