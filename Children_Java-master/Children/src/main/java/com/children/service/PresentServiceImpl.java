package com.children.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.children.dao.PresentDao;
import com.children.model.Present;

@Service("presentService")
@Transactional
public class PresentServiceImpl implements PresentService {
@Autowired
private PresentDao pd;
	@Override
	public Present findById(Integer integer) {
		return pd.findById(integer);
	}

	@Override
	public void save(Present present) {
		pd.save(present);
	}

	@Override
	public void deleteById(int id) {
		pd.deleteById(id);
	}

	@Override
	public List<Present> findAllPresents() {
		return pd.findAllPresents();
	}

	@Override
	public List<Present> findAllPresentsByUser(String userId) {
		return pd.findAllPresentsByUser(userId);
	}

	@Override
	public List<Present> findAllPresentsByHouse(int houseId) {
		return pd.findAllPresentsByHouse(houseId);
	}

}
