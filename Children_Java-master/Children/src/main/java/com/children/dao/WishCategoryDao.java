package com.children.dao;

import java.util.List;

import com.children.model.WishCategory;


public interface WishCategoryDao {
	WishCategory findById(Integer integer);
	
	void save(WishCategory wishCategory);
	
	void deleteById(int id);
	
	List<WishCategory> findAllWishCategories();
	
	WishCategory findByName(String name);	
}
