package com.children.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.children.dao.WishCategoryDao;
import com.children.dao.WishDao;
import com.children.model.Wish;
import com.children.model.WishCategory;

@Service("wishCategoryService")
public class WishCategoryServiceImpl implements WishCategoryService{

	@Autowired
	WishCategoryDao wishCategoryDao;
	
	@Override
	public WishCategory findById(int id) {
		return wishCategoryDao.findById(id);
	}

	@Override
	public void saveWishCategory(WishCategory wish) {
		wishCategoryDao.save(wish);
		
	}

	@Override
	public void updateWishCategory(WishCategory wish) {
		WishCategory w = wishCategoryDao.findById(wish.getId());
		if(w!= null){
			w.setName(wish.getName());
			w.setPictureUrl(wish.getPictureUrl());
		}
		
	}

	@Override
	public void deleteWishCategory(int id) {
		wishCategoryDao.deleteById(id);
		
	}

	@Override
	public List<WishCategory> findAllWishCategories() {
		return wishCategoryDao.findAllWishCategories();
	}

}
