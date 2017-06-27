package com.children.service;

import java.util.List;

import com.children.model.Present;

public interface PresentService {

	Present findById(Integer integer);
	
	void save(Present present);
	
	void deleteById(int id);
	
	List<Present> findAllPresents();

	List<Present> findAllPresentsByUser(String userId);
}
