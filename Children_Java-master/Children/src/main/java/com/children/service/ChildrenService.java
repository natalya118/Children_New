package com.children.service;

import java.util.List;
import java.util.Map;
import java.util.Set;

import com.children.model.Child;
import com.children.model.Wish;

public interface ChildrenService {
	Child findById(int id);

	void saveChild(Child child);

	void updateChild(Child child);

	void deleteChild(int id);

	List<Child> findAllChildren();

	List<Child> findAllChildrenByHouse(int houseId);
	
	List<Child> findAllChildrenWithFilters(Map<String, String> filters);
	
	int getAge(Child child);
	
	List<List<Wish>> formatCarouselWishes(Set<Wish> childWishes);
	
	List<Child> getAllChildrenByPage(int firstOnPage, int countOnPage);
	
	int getPagesCount(int firstOnPage, int countOnPage);
}
