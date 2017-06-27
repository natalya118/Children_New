package com.children.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;
import org.springframework.stereotype.Repository;

import com.children.model.Present;
import com.children.model.Wish;

@Repository("presentDao")
public class PresentDaoImpl extends AbstractDao<Integer, Present> implements PresentDao {

	@Override
	public Present findById(Integer id) {
		
		return getByKey(id);
	}

	@Override
	public void save(Present present) {
		persist(present);
		
	}

	@Override
	public void deleteById(int id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", id));
		Present present = (Present) crit.uniqueResult();
		delete(present);
		
	}

	@Override
	public List<Present> findAllPresents() {
		Criteria criteria = createEntityCriteria();
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		List<Present> presents = (List<Present>) criteria.list();
		return presents;
	}

	@Override
	public List<Present> findAllPresentsByUser(String userId) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("userId", userId));
		List<Present> presents = (List<Present>) criteria.list();
		return presents;
	}

	@Override
	public List<Present> findAllPresentsByHouse(int houseId) {
		// TODO Auto-generated method stub
		return null;
	}

	


}
