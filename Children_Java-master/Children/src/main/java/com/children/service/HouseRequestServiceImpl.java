package com.children.service;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.children.dao.HouseRequestDao;
import com.children.model.House;
import com.children.model.HouseRequest;
import com.children.model.User;
import com.children.model.UserProfile;

@Service("houseRequestService")
public class HouseRequestServiceImpl implements HouseRequestService{
	@Autowired
	private HouseRequestDao houseRequestDao;
	@Autowired
	private HouseService houseService;
	
	@Autowired
	private UserService userService;	
	
	@Autowired
	private UserProfileService userProfileService;



	@Override
	public HouseRequest findById(int id) {
		return houseRequestDao.findById(id);
	}

	@Override
	public void saveHouseRequest(HouseRequest houseRequest) {
		houseRequestDao.save(houseRequest);
		
	}

	@Override
	public void updateHouseRequest(HouseRequest houseRequest) {
		HouseRequest h = houseRequestDao.findById(houseRequest.getId());
		if (h!=null){
			h.setCity(houseRequest.getCity());
			h.setDescription(houseRequest.getDescription());
			h.setName(houseRequest.getName());
			h.setNumber(houseRequest.getNumber());
			h.setStreet(houseRequest.getStreet());
			h.setFirstName(houseRequest.getFirstName());
			h.setLastName(houseRequest.getLastName());
			h.setEmail(houseRequest.getEmail());
			h.setSsoId(houseRequest.getSsoId());
			h.setPassword(houseRequest.getPassword());
		}
		
	}

	@Override
	public void deleteHouseRequest(int id) {
		houseRequestDao.deleteById(id);
		
	}

	@Override
	public List<HouseRequest> findAllHouseRequests() {
		return houseRequestDao.findAllRequests();
	}

	@Override
	public void registerHouse(int requestId) {
		HouseRequest r = houseRequestDao.findById(requestId);
		User u = new User();
		u.setEmail(r.getEmail());
		u.setFirstName(r.getFirstName());
		u.setLastName(r.getLastName());
		u.setSsoId(r.getSsoId());
		u.setPassword(r.getPassword());
		Set<UserProfile> userProfiles = new HashSet<UserProfile>(); 
		//userProfiles.add(userProfileService.findById(2));
		System.out.println("jrjodrgj________ " +userProfileService.findById(2));
		u.setUserProfiles(userProfiles);
		
		
		House h = new House();
		h.setName(r.getName());
		h.setCity(r.getCity());
		h.setStreet(r.getStreet());
		h.setNumber(r.getNumber());
		h.setDescription(r.getDescription());
		userService.saveUser(u);
		houseService.saveHouse(h);
		houseRequestDao.deleteById(requestId);
		
	}


}
