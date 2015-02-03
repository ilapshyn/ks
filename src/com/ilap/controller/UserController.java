package com.ilap.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.ilap.model.User;
import com.ilap.service.PersonService;

@Controller
public class UserController {
	
	@Autowired
	private PersonService personService;
	
	@RequestMapping("/user")
	public User getUser(){
		User person = new User("Igor", "Lapshyn", (long) 24);
		personService.save(person);
		return person;
	}
	
	@RequestMapping("/users")
	public @ResponseBody List<User> getUsers(){
		return personService.fetchAll();
	}
	
}
