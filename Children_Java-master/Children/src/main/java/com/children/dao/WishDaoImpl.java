package com.children.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.children.model.Wish;

@Repository("childDao")
public class WishDaoImpl extends AbstractDao<Integer, Wish> implements WishDao {

	@Override
	public Wish findById(Integer id) {
		
		return getByKey(id);
	}

	@Override
	public void save(Wish wish) {
		persist(wish);
		
	}

	@Override
	public void deleteById(int id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", id));
		Wish wish = (Wish) crit.uniqueResult();
		delete(wish);
		
	}

	@Override
	public List<Wish> findAllWishes() {
		Criteria criteria = createEntityCriteria();
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		List<Wish> wishes = (List<Wish>) criteria.list();
		return wishes;
	}

	@Override
	public List<Wish> findAllWishesByCat(int categoryId) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("category_id", categoryId));
		List<Wish> wishes = (List<Wish>) criteria.list();
		return wishes;
	}

	@Override
	public List<Wish> findAllWishesByChild(int childId) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("child_id", childId));
		List<Wish> wishes = (List<Wish>) criteria.list();
		return wishes;
	}

	@Override
	public List<Wish> findAllWishesByHouse(int houseId) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("house_id", houseId));
		List<Wish> wishes = (List<Wish>) criteria.list();
		return wishes;
	}



}
