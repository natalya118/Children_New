package com.children.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.children.dao.WishDao;
import com.children.model.Wish;

@Service("wishService")
public class WishServiceImpl implements WishService{

	@Autowired
	WishDao wishDao;
	
	@Override
	public Wish findById(int id) {
		return wishDao.findById(id);
	}

	@Override
	public void saveWish(Wish wish) {
		wishDao.save(wish);
		
	}

	@Override
	public void updateWish(Wish wish) {
		Wish w = wishDao.findById(wish.getId());
		if(w!= null){
			w.setChild(wish.getChild());
			w.setDescription(wish.getDescription());
			w.setName(wish.getName());
		}
		
	}

	@Override
	public void deleteWish(int id) {
		wishDao.deleteById(id);
		
	}

	@Override
	public List<Wish> findAllWishes() {
		return wishDao.findAllWishes();
	}

	@Override
	public List<Wish> findAllWishesByHouse(int houseId) {
		return wishDao.findAllWishesByHouse(houseId);
	}

	@Override
	public List<Wish> findAllWishesByChild(int childId) {
		return wishDao.findAllWishesByChild(childId);
	}

}
