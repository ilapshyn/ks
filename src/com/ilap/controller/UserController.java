package com.ilap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ilap.model.User;
import com.ilap.service.UserService;

@Controller
public class UserController {
	
	@Autowired
	private UserService personService;
	
	@RequestMapping("/user")
	public User getUser(){
		personService.save(null);
		return null;
	}
	
	@RequestMapping("/users")
	public @ResponseBody List<User> getUsers(){
		return personService.fetchAll();
	}
	
}
