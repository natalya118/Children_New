package com.children.dao;

import java.util.List;

import com.children.model.House;
import com.children.model.HouseRequest;


public interface HouseRequestDao {
	HouseRequest findById(Integer id);
	
	void save(HouseRequest houseRequest);
	
	void deleteById(int id);
	
	List<HouseRequest> findAllRequests();
}
