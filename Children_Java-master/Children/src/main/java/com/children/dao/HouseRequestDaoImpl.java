package com.children.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.children.model.House;
import com.children.model.HouseRequest;

@Repository("houseRequestDao")

public class HouseRequestDaoImpl extends AbstractDao<Integer, HouseRequest> implements HouseRequestDao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public HouseRequest findById(Integer id) {
		return getByKey(id);
	}

	@Override
	public void save(HouseRequest houseRequest) {
		persist(houseRequest);

	}

	@Override
	public void deleteById(int id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", id));
		HouseRequest houseRequest = (HouseRequest) crit.uniqueResult();
		delete(houseRequest);

	}

	@Override
	public List<HouseRequest> findAllRequests() {
		Criteria criteria = createEntityCriteria();
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		List<HouseRequest> houseRequests = (List<HouseRequest>) criteria.list();
		return houseRequests;
	}

	
}
