package com.children.service;

import java.util.List;

import com.children.model.Wish;
import com.children.model.WishCategory;

public interface WishCategoryService {
	WishCategory findById(int id);

	void saveWishCategory(WishCategory cat);

	void updateWishCategory(WishCategory cat);

	void deleteWishCategory(int id);

	List<WishCategory> findAllWishCategories();

	
}
