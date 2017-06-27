package com.children.dao;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.children.model.PresentStatus;
import com.children.model.PresentStatusType;
@Repository("presentStatusDao")
public class PresentStatusDaoImpl implements PresentStatusDao {
	@Autowired
	private SessionFactory sessionFactory;
	
	@Override
	public PresentStatus findByName(String name) {
		Criteria c = sessionFactory.getCurrentSession().createCriteria(PresentStatus.class);
		c.add(Restrictions.eq("status", PresentStatusType.valueOf(name)));
		return (PresentStatus) c.uniqueResult();
	}

	@Override
	public PresentStatus findById(int id) {
		Criteria c = sessionFactory.getCurrentSession().createCriteria(PresentStatus.class);
		c.add(Restrictions.eq("id", id));
		return (PresentStatus) c.uniqueResult();
	}

}
