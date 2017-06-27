package com.children.dao;

import java.util.List;

import org.hibernate.Criteria;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.children.model.UserProfile;
import com.children.model.Wish;
import com.children.model.WishCategory;

@Repository("wishCategoryDao")
public class WishCategoryDaoImpl extends AbstractDao<Integer, WishCategory> implements WishCategoryDao {
	@Autowired
	private SessionFactory sessionFactory;
	@Override
	public WishCategory findById(Integer id) {
		return getByKey(id);
	}

	@Override
	public void save(WishCategory wishCategory) {
		persist(wishCategory);

	}

	@Override
	public void deleteById(int id) {
		Criteria crit = createEntityCriteria();
		crit.add(Restrictions.eq("id", id));
		WishCategory wishCategory = (WishCategory) crit.uniqueResult();
		delete(wishCategory);

	}

	@Override
	public List<WishCategory> findAllWishCategories() {
		Criteria criteria = createEntityCriteria();
		criteria.setResultTransformer(Criteria.DISTINCT_ROOT_ENTITY);
		List<WishCategory> wishes = (List<WishCategory>) criteria.list();
		return wishes;
	}

	@Override
	public WishCategory findByName(String name) {
		Criteria c = sessionFactory.getCurrentSession().createCriteria(WishCategory.class);
		c.add(Restrictions.eq("name", name));
		return (WishCategory) c.uniqueResult();
	}

}
