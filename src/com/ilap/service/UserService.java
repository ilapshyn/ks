package com.ilap.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.ilap.dao.UserDAO;
import com.ilap.model.User;

@Service
@Transactional
public class UserService {

	@Autowired
	private UserDAO userDao;
	
	public void save(User user) {
		userDao.save(user);
	}

	public List<User> fetchAll() {
		List<User> users = userDao.fetchAll();
		for(User user : users) {
			System.out.println(user.getUserRole().size());
		}
		return users;
	}
	
}
