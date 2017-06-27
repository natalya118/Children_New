package com.children.dao;

import java.util.List;

import com.children.model.House;


public interface HouseDao {
	House findById(Integer id);
	
	void save(House house);
	
	void deleteById(int id);
	
	List<House> findAllHouses();

	List<House> findAllHousesByCity(String city);
	
	int getNumberOfChildren(int id);
}
