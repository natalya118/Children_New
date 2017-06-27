package com.children.controller;

import java.util.HashSet;
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
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.FieldError;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.children.dao.HouseDaoImpl;
import com.children.model.House;
import com.children.model.User;
import com.children.model.UserProfile;
import com.children.service.UserProfileService;
import com.children.service.UserService;

@Controller
public class RegistrationController {
	@Autowired
	UserService userService;

	@Autowired
	UserProfileService userProfileService;

	@Autowired
	MessageSource messageSource;

	@Autowired
	PersistentTokenBasedRememberMeServices persistentTokenBasedRememberMeServices;

	@Autowired
	AuthenticationTrustResolver authenticationTrustResolver;

	@RequestMapping(value = { "/registration" }, method = RequestMethod.GET)
	public String registrationRender(ModelMap model) {
		if(!getPrincipal().equals("anonymousUser")) return "redirect:/all";
		model.addAttribute("user", new User());
		return "login";
	}

	@RequestMapping(value = { "/userreg" }, method = RequestMethod.POST)
	public String saveUser(@Valid User user, BindingResult result, ModelMap model) {
		
		if (result.hasErrors()) {
			System.out.println(result.getAllErrors().toString());
			return "login";
		}

		if (!userService.isUserSSOUnique(user.getId(), user.getSsoId())) {
			FieldError ssoError = new FieldError("user", "ssoId", messageSource.getMessage("non.unique.ssoId",
					new String[] { user.getSsoId() }, Locale.getDefault()));
			result.addError(ssoError);
			return "redirect:/login";
		}
//		Set<UserProfile> userProfiles = new HashSet<UserProfile>();
//		userProfiles.add(userProfileService.findById(1)));
//		user.setUserProfiles(userProfiles);
		userService.saveUser(user);

		model.addAttribute("loggedinuser", getPrincipal());

		// return "success";
		return "redirect:/login";
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
// @Transactional
// @RequestMapping(value={"/registration"}, method=RequestMethod.POST)
// public String register(@Valid House h, BindingResult bindingResult){
// System.out.println("Try..");
// if (!bindingResult.hasErrors()) {
// houseDAO.save((House) bindingResult.getTarget() );
// }
// return "login";
// }
// }
