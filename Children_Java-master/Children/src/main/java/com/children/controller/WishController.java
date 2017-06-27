package com.children.controller;

import java.sql.Date;
import java.time.LocalDate;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.children.model.Present;
import com.children.service.PresentService;
import com.children.service.PresentStatusService;
import com.children.service.UserService;
import com.children.service.WishService;

@Controller
public class WishController {
	@Autowired
	private WishService ws;
	@Autowired
	private UserService us;
	@Autowired
	private PresentService presentService;
	@Autowired
	private PresentStatusService presentStatusService;
	
	@Transactional
@RequestMapping(value="/completeWish", method=RequestMethod.GET)
public String complete(@RequestParam(name="prst",required=false) String presentStatus, @RequestParam("userId") int userId,@Valid Present p, BindingResult br){
	p.setUser(us.findById(userId));
	p.setDateOpened(Date.valueOf(LocalDate.now()));
	p.setPresentStatusId(presentStatusService.findByName((presentStatus==null)?"CREATED":"INPROGRESS").getId());
	presentService.save(p);
	return "redirect:/child?id="+ws.findById(p.getWishId()).getChild().getId();
}
}