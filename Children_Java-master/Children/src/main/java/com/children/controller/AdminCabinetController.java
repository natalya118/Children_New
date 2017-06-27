package com.children.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Locale;
import java.util.Set;

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
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.children.model.CatView;
import com.children.model.House;
import com.children.model.HouseRequest;
import com.children.model.User;
import com.children.model.UserProfile;
import com.children.model.WishCategory;
import com.children.service.HouseRequestService;
import com.children.service.HouseService;
import com.children.service.UserProfileService;
import com.children.service.UserService;
import com.children.service.WishCategoryService;
@Controller
public class AdminCabinetController {
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
	@RequestMapping(value = { "/admin" }, method = RequestMethod.GET)
	public String getMainPage(ModelMap model) {
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("requests", houseRequestService.findAllHouseRequests());
		model.addAttribute("categories", wishCategoryService.findAllWishCategories());
		model.addAttribute("category", new WishCategory());
		model.addAttribute("updateCategory", new WishCategory());
		List<House> houses = houseService.findAllHouses();
		for(House h: houses){
			h.setNumberOfChildren(houseService.getNumberOfChildren(h.getId()));
		}
		model.addAttribute("houses", houseService.findAllHouses());
		return "admin-cabinet";
	}
	
	@Transactional
	@RequestMapping(value = { "/register/{requestId}" }, method = RequestMethod.GET)
	public String registerHouse(@PathVariable int requestId, ModelMap model) {
		
		model.addAttribute("loggedinuser", getPrincipal());
		houseRequestService.registerHouse(requestId);
	
		return "redirect:/admin";
	}
	
	@Transactional
	@RequestMapping(value = { "/delete/{houseId}" }, method = RequestMethod.GET)
	public String deleteHouse(@PathVariable int houseId, ModelMap model) {
		
		model.addAttribute("loggedinuser", getPrincipal());
		houseService.deleteHouse(houseId);
	
		return "redirect:/admin";
	}
	
	@Transactional
	@RequestMapping(value = { "/newcategory" }, method = RequestMethod.POST)
	public String newCat(@Valid WishCategory category, BindingResult result, ModelMap model) {
		
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors().toString());
			return "redirect:/admin";
		}

		
		wishCategoryService.saveWishCategory(category);

		model.addAttribute("loggedinuser", getPrincipal());

		// return "success";
		return "redirect:/admin";
	}
	
	@Transactional
	@RequestMapping(value = { "/updateCategory" }, method = RequestMethod.POST)
	public String updCat(@Valid WishCategory updateCategory, BindingResult result, ModelMap model) {
		
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors().toString());
			return "redirect:/admin";
		}

		wishCategoryService.updateWishCategory(updateCategory);
		
		model.addAttribute("loggedinuser", getPrincipal());
		return "redirect:/admin";
	}

	
	@Transactional
	@RequestMapping(value = { "/deleteCategory/{categoryId}" }, method = RequestMethod.GET)
	public String deleteCategory(@PathVariable int categoryId, ModelMap model) {
		System.out.println("deleteeee");
		model.addAttribute("loggedinuser", getPrincipal());
		wishCategoryService.deleteWishCategory(categoryId);
	
		return "redirect:/admin";
	}
	
//	@Transactional
//	@RequestMapping(value = { "/addRequest" }, method = RequestMethod.POST)
//	public String saveUser(@Valid HouseRequest request, BindingResult result, ModelMap model) {
//		System.out.println("____________-reg");
//		if (result.hasErrors()) {
//			System.out.println(result.getAllErrors().toString());
//			model.addAttribute("message", "Oops ____________________");
//			return "redirect:/";
//		}
//
//		houseRequestService.saveHouseRequest(request);
//		model.addAttribute("message", "Вашу заявку надіслано!");
//		model.addAttribute("loggedinuser", getPrincipal());
//
//		return "redirect:/";
//	}
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
