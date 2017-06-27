package com.children.service;

import java.util.List;

import com.children.model.House;


public interface HouseService {
	House findById(int id);

	void saveHouse(House House);

	void updateHouse(House House);

	void deleteHouse(int id);

	List<House> findAllHouses();

	List<House> findAllHouses(String city);
	
	int getNumberOfChildren(int id);
}
