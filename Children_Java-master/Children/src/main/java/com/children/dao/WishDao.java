package com.children.dao;

import java.util.List;

import com.children.model.Wish;


public interface WishDao {
	Wish findById(Integer integer);
	
	void save(Wish wish);
	
	void deleteById(int id);
	
	List<Wish> findAllWishes();

	List<Wish> findAllWishesByHouse(int houseId);
	
	List<Wish> findAllWishesByCat(int categoryId);
	
	List<Wish> findAllWishesByChild(int childId);
}
