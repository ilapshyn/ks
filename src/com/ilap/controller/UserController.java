package com.softserve.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softserve.model.Person;
import com.softserve.service.PersonService;

@Controller
public class UserController {
	
	@Autowired
	private PersonService personService;
	
	@RequestMapping("/user")
	public Person getUser(){
		Person person = new Person("Igor", "Lapshyn", (long) 24);
		personService.save(person);
		return person;
	}
	
	@RequestMapping("/users")
	public @ResponseBody List<Person> getUsers(){
		return personService.fetchAll();
	}
	
}
