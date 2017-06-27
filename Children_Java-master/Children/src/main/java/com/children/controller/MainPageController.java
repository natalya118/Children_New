package com.children.controller;

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

import com.children.model.HouseRequest;
import com.children.service.ChildrenService;
import com.children.service.HouseRequestService;
import com.children.service.UserProfileService;
import com.children.service.UserService;

@Controller
public class MainPageController {
	@Autowired
	ChildrenService childrenService;
	@Autowired
	UserService userService;

	@Autowired
	UserProfileService userProfileService;

	@Autowired
	HouseRequestService houseRequestService;

	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;
	@Transactional
	@RequestMapping(value = { "/" }, method = RequestMethod.GET)
	public String getMainPage(ModelMap model) {
		model.addAttribute("request", new HouseRequest());
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("children",childrenService.getAllChildrenByPage(1,2));
		return "index";
	}

	@Transactional
	@RequestMapping(value = { "/addRequest" }, method = RequestMethod.POST)
	public String saveUser(@Valid HouseRequest request, BindingResult result, ModelMap model) {
		System.out.println("____________-reg");
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors().toString());
			model.addAttribute("message", "Oops ____________________");
			return "redirect:/";
		}

		houseRequestService.saveHouseRequest(request);
		model.addAttribute("message", "���� ������ ��������!");
		model.addAttribute("loggedinuser", getPrincipal());

		return "redirect:/";
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
