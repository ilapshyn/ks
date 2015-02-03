package com.ilap.dao;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.ilap.model.Person;

@Repository
public class PersonDAO {
	
	@Autowired
	private SessionFactory sessionFactory;

	public void save(Person person) {
		sessionFactory.getCurrentSession().save(person);
	}

	@SuppressWarnings("unchecked")
	public List<Person> fetchAll() {
		return sessionFactory.getCurrentSession().createQuery("from Person").list();
	}
	
}