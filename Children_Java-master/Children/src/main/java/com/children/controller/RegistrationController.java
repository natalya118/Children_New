package com.children.controller;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.children.dao.HouseDaoImpl;
import com.children.model.House;

@Controller
public class RegistrationController {
@Autowired
public HouseDaoImpl houseDAO;
	@RequestMapping(value={"/registration"}, method=RequestMethod.GET)
	public String registrationRender(Model m){
		m.addAttribute("house", new House());
		return "login";
	}
	 @Transactional
	@RequestMapping(value={"/registration"}, method=RequestMethod.POST)
	public String register(@Valid House h, BindingResult bindingResult){
        System.out.println("Try..");
		if (!bindingResult.hasErrors()) {
            houseDAO.save((House) bindingResult.getTarget() );
        }
		return "login";
	}
}
