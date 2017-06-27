package com.children.dao;

import java.util.List;
import java.util.Map;

import com.children.model.Child;


public interface ChildDao {
	Child findById(Integer integer);
	
	void save(Child child);

	void update(Child child);
	
	void deleteById(int id);
	
	List<Child> findAllChildren();
	
	List<Child> findAllChildrenByHouse(int houseId);
	
	List<Child> findAllChildrenWithFilters(Map<String, String> filters);
	
	List<Child> findAllChildrenByPage(int firstOnPage, int countOnPage);
	
	int getPagesCount(int firstOnPage, int countOnPage);
}
