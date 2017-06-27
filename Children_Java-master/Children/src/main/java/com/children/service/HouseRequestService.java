package com.children.service;

import java.util.List;

import com.children.model.House;
import com.children.model.HouseRequest;


public interface HouseRequestService {
	HouseRequest findById(int id);

	void saveHouseRequest(HouseRequest houseRequest);

	void updateHouseRequest(HouseRequest houseRequest);

	void deleteHouseRequest(int id);

	List<HouseRequest> findAllHouseRequests();
	
	void registerHouse(int requestId);

}
