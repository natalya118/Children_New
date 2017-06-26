package com.children.controller;

import java.util.List;

import javax.transaction.Transactional;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.children.model.House;
import com.children.model.User;
import com.children.model.WishCategory;
import com.children.model.viewmodel.ChangeUserModel;
import com.children.service.HouseRequestService;
import com.children.service.HouseService;
import com.children.service.UserProfileService;
import com.children.service.UserService;
import com.children.service.WishCategoryService;
@Controller
public class UserCabinetController {

	@Autowired
	UserService userService;

	@Autowired
	UserProfileService userProfileService;

	@Autowired
	HouseRequestService houseRequestService;
	
	@Autowired
	HouseService houseService;
	
	@Autowired
	WishCategoryService wishCategoryService;

	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	
	@Transactional
	@RequestMapping(value = { "/user" }, method = RequestMethod.GET)
	public String getMainPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("updateUser", new ChangeUserModel());
		
		return "user-cabinet";
	}
	@Transactional
	@RequestMapping(value = { "/updateUser" }, method = RequestMethod.POST)
	public String updUser(@Valid ChangeUserModel updateUser, BindingResult result, ModelMap model) {
		System.out.println("Heeeeeere");
		
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors().toString());
			return "redirect:/admin";
		}
		User user = userService.findBySSO(getPrincipal());
		
		
		if(updateUser.getSsoId()!=null)
			user.setSsoId(updateUser.getSsoId());
		
		if(updateUser.getEmail()!=null)
			user.setEmail(updateUser.getEmail());
		
		if(updateUser.getFirstName()!=null)
			user.setEmail(updateUser.getFirstName());
		
		if(updateUser.getLastName()!=null)
			user.setEmail(updateUser.getLastName());
		if(updateUser.getPassword()!=null)
			user.setEmail(updateUser.getPassword());
		if(updateUser.getPhotoUrl()!=null)
			user.setEmail(updateUser.getPhotoUrl());
		
		model.addAttribute("loggedinuser", getPrincipal());
		return "redirect:/user";
	}
	private String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}

	/**
	 * This method returns true if users is already authenticated [logged-in],
	 * else false.
	 */
	private boolean isCurrentAuthenticationAnonymous() {
		final Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		return authenticationTrustResolver.isAnonymous(authentication);
	}
}
