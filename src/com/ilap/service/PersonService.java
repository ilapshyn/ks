package com.ilap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ilap.dao.PersonDAO;
import com.ilap.model.User;

@Service
@Transactional
public class PersonService {

	@Autowired
	private PersonDAO personDao;
	
	public void save(User person) {
		personDao.save(person);
	}

	public List<User> fetchAll() {
		return personDao.fetchAll();
	}
	
}
