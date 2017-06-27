package com.children.dao;

import java.util.List;

import com.children.model.Present;
import com.children.model.Wish;


public interface PresentDao {
	Present findById(Integer integer);
	
	void save(Present present);
	
	void deleteById(int id);
	
	List<Present> findAllPresents();

	List<Present> findAllPresentsByUser(String userId);

	List<Present> findAllPresentsByHouse(int houseId);
	
}
