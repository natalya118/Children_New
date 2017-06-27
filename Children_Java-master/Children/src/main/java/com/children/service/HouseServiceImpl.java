package com.children.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.children.dao.HouseDao;
import com.children.model.House;

@Service("houseService")
public class HouseServiceImpl implements HouseService{
	@Autowired
	private HouseDao houseDao;

	@Override
	public House findById(int id) {
		return houseDao.findById(id);
	}

	@Override
	public void saveHouse(House house) {
		houseDao.save(house);
		
	}

	@Override
	public void updateHouse(House house) {
		House h = houseDao.findById(house.getId());
		if (h!=null){
			h.setCity(house.getCity());
			h.setDescription(house.getDescription());
			h.setName(house.getName());
			h.setNumber(house.getNumber());
			h.setStreet(house.getStreet());
		}
		
	}

	@Override
	public void deleteHouse(int id) {
		houseDao.deleteById(id);
		
	}

	@Override
	public List<House> findAllHouses() {
		return houseDao.findAllHouses();
	}

	@Override
	public List<House> findAllHouses(String city) {
		return houseDao.findAllHousesByCity(city);
	}

	@Override
	public int getNumberOfChildren(int id) {
		return houseDao.getNumberOfChildren(id);
	}

}
