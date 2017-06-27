package com.children.dao;

import java.util.List;
import java.util.Map;

import org.hibernate.Criteria;
import org.hibernate.Hibernate;
import org.hibernate.Query;
import org.hibernate.ScrollableResults;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.DetachedCriteria;
import org.hibernate.criterion.Expression;
import org.hibernate.criterion.Restrictions;
import org.hibernate.type.IntegerType;
import org.joda.time.LocalDate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.children.model.Child;
import com.children.model.House;
import java.io.Console;
import java.text.SimpleDateFormat;
import java.util.Date;

@Repository("wishDao")
public class ChildDaoImpl extends AbstractDao<Integer, Child> implements ChildDao {


	@Autowired
	   SessionFactory sessionFactory;
	@Override
	public void deleteById(int id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", id));
		Child child = (Child) crit.uniqueResult();
		delete(child);
	}

	@Override
	public void update(Child c){
		sessionFactory.getCurrentSession().update(c);
	}

	@Override
	public Child findById(Integer id) {
		return getByKey(id);
	}

	@Override
	public void save(Child child) {
		persist(child);
		
	}

	@Override
	public List<Child> findAllChildren() {
		Criteria criteria = createEntityCriteria();
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		List<Child> children = (List<Child>) criteria.list();
		return children;
	}
	
	@Override
	public List<Child> findAllChildrenByPage(int firstOnPage, int countOnPage) {
		Criteria criteria = createEntityCriteria();
		firstOnPage--;
		criteria.setFirstResult(firstOnPage*countOnPage);
		criteria.setMaxResults(countOnPage);
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		List<Child> children = (List<Child>) criteria.list();
		
		return children;
	}
	
	@Override
	public int getPagesCount(int firstOnPage, int countOnPage) {
		int totalRecords=0;
		 ScrollableResults  scrollableResults = sessionFactory.getCurrentSession().createCriteria(Child.class).setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY).scroll();
         scrollableResults.last();
         totalRecords=scrollableResults.getRowNumber()+1;
         System.out.println("total records= " + totalRecords);
         scrollableResults.close();
		Criteria criteria = createEntityCriteria();
		criteria.setFirstResult(firstOnPage);
		criteria.setMaxResults(countOnPage);
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		List<Child> children = (List<Child>) criteria.list();
		
		return (totalRecords%countOnPage==0)?(totalRecords/countOnPage):(totalRecords/countOnPage+1);
	}



	@Override
	public List<Child> findAllChildrenByHouse(int houseId) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Child.class, "c").createAlias("c.house", "h")
				 .add(Restrictions.eq("h.id", houseId));
		List<Child> children = (List<Child>) criteria.list();
		return children;
	}


/**
 * 
 * @param filters Map of filter properties, where key is name of the column in database, value is needed value. To make complex criterias (like age) do it above the default case;
 * 
 * 
 */
	@Override
	public List<Child> findAllChildrenWithFilters(Map<String, String> filters) {
		Criteria criteria = sessionFactory.getCurrentSession().createCriteria(Child.class);
		for(String s:filters.keySet()){
			switch(s){
			case "age":
				
				//criteria.add(Restrictions.sqlRestriction("YEAR(birthDate) >= ? ", 1996,IntegerType.INSTANCE));

				break;
			case "city":
				
				criteria.createAlias("house","h");//.createAlias("h.city", "c");
				criteria.add(Expression.eq("h.city", filters.get(s)));
				break;
			default:
				criteria.add(Restrictions.eq(s, filters.get(s)));
				break;
			}
		}
		return (List<Child>) criteria.list();
	}

}
