package com.children.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.children.model.House;

@Repository("houseDao")
public class HouseDaoImpl extends AbstractDao<Integer, House> implements HouseDao {
	@Autowired
	SessionFactory sessionFactory;

	@Override
	public House findById(Integer id) {
		return getByKey(id);
	}

	@Override
	public void save(House house) {
		persist(house);

	}

	@Override
	public void deleteById(int id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", id));
		House house = (House) crit.uniqueResult();
		delete(house);

	}

	@Override
	public List<House> findAllHouses() {
		Criteria criteria = createEntityCriteria();
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		List<House> houses = (List<House>) criteria.list();
		return houses;
	}

	@Override
	public List<House> findAllHousesByCity(String city) {
		Criteria criteria = createEntityCriteria();
		criteria.add(Restrictions.eq("city", city));
		List<House> houses = (List<House>) criteria.list();
		return houses;
	}



	@Override
	public int getNumberOfChildren(int id) {
		Query query = sessionFactory.getCurrentSession()
				.createQuery("SELECT COUNT(*) FROM House h INNER JOIN h.children c  WHERE c.house.id = "+ id+ " GROUP BY h.id");
	    try{
	    	int count = (int) (long)query.uniqueResult();
	    	return count;
	    }catch(Exception e){
	    	return 0;
	    }
		
	}
}
