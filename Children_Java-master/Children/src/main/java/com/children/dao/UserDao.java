package com.children.dao;

import java.util.List;
import java.util.Set;
import com.children.model.User;


public interface UserDao {

	User findById(Integer integer);
	
	User findBySSO(String sso);
	
	void save(User user);
	
	void deleteBySSO(String sso);
	
	List<User> findAllUsers();
	
}

