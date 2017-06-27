package com.children.controller;


import java.util.HashSet;

import javax.validation.Valid;

import org.hibernate.mapping.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.MessageSource;
import org.springframework.security.authentication.AuthenticationTrustResolver;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.rememberme.PersistentTokenBasedRememberMeServices;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.children.dao.WishCategoryDao;
import com.children.model.Child;
import com.children.model.House;
import com.children.model.Wish;
import com.children.model.WishCategory;
import com.children.model.viewmodel.ChangeUserModel;
import com.children.service.ChildrenService;
import com.children.service.ChildrenServiceImpl;
import com.children.service.HouseRequestService;
import com.children.service.HouseService;
import com.children.service.PresentService;
import com.children.service.UserProfileService;
import com.children.service.UserService;
import com.children.service.WishCategoryService;
import com.children.service.WishService;

@Controller
public class HouseCabinetController {
	@Autowired
	private WishService wishDao;
	@Autowired
	private WishCategoryDao wcDAO;
	@Autowired
	private ChildrenService childrenService;
	
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
	@Autowired
	private PresentService presentService;
	
	@Transactional
	@RequestMapping(value = { "/house/{id}" }, method = RequestMethod.GET)
	public String getMainPage(ModelMap model, @PathVariable int id) {
		model.addAttribute("house", houseService.findById(id));
		model.addAttribute("child", new Child());
		model.addAttribute("loggedinuser", getPrincipal());
		model.addAttribute("updateUser", new ChangeUserModel());
		model.addAttribute("children", childrenService.findAllChildrenByHouse(id));
		model.addAttribute("wishes", presentService.findAllPresents());
		
		return "house-cabinet";
	}
	
	@Transactional
	@RequestMapping(value = { "/house/{id}/newchild" }, method = RequestMethod.POST)
	public String newCat(@Valid Child child, BindingResult result, @PathVariable int id, ModelMap model) {
		System.out.println("fddschild");
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors().toString());
			return "redirect:/house";
		}
		
		HashSet<Wish> wishes = new HashSet<Wish>();
		child.setHouse(houseService.findById(id));
		Child c = new Child();
		c.setBirthDate(child.getBirthDate());
		child.setWishes(wishes);
		c.setDescription(child.getDescription());
		c.setFirstName(child.getFirstName());
		c.setLastName(child.getLastName());
		c.setHouse(child.getHouse());
		c.setSex(child.getSex());
		
		
		
		System.out.println("house= " + child.getHouse().getId());
		childrenService.saveChild(c);
		System.out.println("test");

		model.addAttribute("loggedinuser", getPrincipal());

		// return "success";
		return "redirect:/house";
	}
	
	@Transactional
	@RequestMapping(value = { "/edit_house" }, method = RequestMethod.GET)
	public String newCat(@Valid House house, BindingResult result, @PathVariable int id, ModelMap model) {
		
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors().toString());
			return "redirect:/house/"+id;
		}
		
		houseService.updateHouse(house);
		model.addAttribute("loggedinuser", getPrincipal());

		// return "success";
		return "redirect:/house/"+id;
	}
	@Transactional(readOnly=false)
	@RequestMapping(value={"/addWishMyOwn"}, method=RequestMethod.GET)
	public String addWish(Model m, @RequestParam(name="categoryWish", required=false) String wishCategory,@RequestParam("childId") int childId, @Valid Wish w, BindingResult bindingResult){
		if(bindingResult.hasErrors()||wishCategory==null){
			System.out.println("/child?id="+childId);
			m.addAttribute("error",bindingResult.getAllErrors().get(0));
			return "redirect:/child?id="+childId;
		}
		w.setCategory(wcDAO.findByName(wishCategory));
		w.setChild(childrenService.findById(childId));
		wishDao.saveWish(w);
		return "redirect:/child?id="+childId;
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
