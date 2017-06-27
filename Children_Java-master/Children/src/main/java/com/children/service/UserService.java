package com.children.service;

import java.util.List;

import com.children.model.User;


public interface UserService {
	
	User findById(int id);
	
	User findBySSO(String sso);
	
	void saveUser(User user);
	
	void updateUser(User user);
	
	void deleteUserBySSO(String sso);

	List<User> findAllUsers(); 
	
	List<User> findAllUsers(int osbbId); 
	boolean isUserSSOUnique(Integer id, String sso);


}