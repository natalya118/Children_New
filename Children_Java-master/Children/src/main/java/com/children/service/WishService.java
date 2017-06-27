package com.children.service;

import java.util.List;

import com.children.model.Wish;

public interface WishService {
	Wish findById(int id);

	void saveWish(Wish wish);

	void updateWish(Wish wish);

	void deleteWish(int id);

	List<Wish> findAllWishes();

	List<Wish> findAllWishesByHouse(int houseId);
	
	List<Wish> findAllWishesByChild(int childId);
}
