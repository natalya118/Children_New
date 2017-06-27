package com.children.service;

import java.time.LocalDate;
import java.time.Period;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.children.dao.ChildDao;
import com.children.model.Child;
import com.children.model.Wish;

@Service("childrenService")
public class ChildrenServiceImpl implements ChildrenService{
	@Autowired
	ChildDao childDao;

	@Override
	public Child findById(int id) {
		return childDao.findById(id);
	}

	@Override
	public void saveChild(Child child) {
		childDao.save(child);
		
	}

	@Override
	public void updateChild(Child child) {
		Child c = childDao.findById(child.getId());
		if(c!= null){
			c.setDescription(child.getDescription());
			c.setFirstName(child.getFirstName());
			c.setLastName(child.getLastName());
			c.setBirthDate(child.getBirthDate());			
		}
		childDao.update(c);
	}

	@Override
	public void deleteChild(int id) {
		childDao.deleteById(id);
		
	}

	@Override
	public List<Child> findAllChildren() {
		return childDao.findAllChildren();
	}

	@Override
	public List<Child> findAllChildrenByHouse(int houseId) {
		return childDao.findAllChildrenByHouse(houseId);
	}

	@Override
	public List<Child> findAllChildrenWithFilters(Map<String, String> filters) {
		return childDao.findAllChildrenWithFilters(filters);
	}

	@Override
	public int getAge(Child child) {
		return Period.between(
				LocalDate.of(child.getBirthDate().getYear(), child.getBirthDate().getMonth(), child.getBirthDate().getDay())
				,LocalDate.now())
				.getYears();
	}
	
	@Override
	public List<Child> getAllChildrenByPage(int firstOnPage, int countOnPage){
		return childDao.findAllChildrenByPage(firstOnPage, countOnPage);
	}

	@Override
	public List<List<Wish>> formatCarouselWishes(Set<Wish> childWishes) {
		List<List<Wish>> ret = new ArrayList<List<Wish>>();
		List<Wish> part = new ArrayList<Wish>();
		int i=0;
		for(Wish w: childWishes){
			i++;
			part.add(w);
			if(i%3==0){
				ret.add(part);
				part = new ArrayList<Wish>();
			}
		}
		if(i%3!=0){
			ret.add(part);
		}
		return ret;
	}

	@Override
	public int getPagesCount(int firstOnPage, int countOnPage) {
		return childDao.getPagesCount(firstOnPage, countOnPage);
	}
}
