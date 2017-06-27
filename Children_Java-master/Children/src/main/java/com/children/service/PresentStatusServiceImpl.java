package com.children.service;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.children.dao.PresentStatusDao;
import com.children.model.PresentStatus;

@Service("presentStatusService")
@Transactional
public class PresentStatusServiceImpl implements PresentStatusService {
@Autowired 
private PresentStatusDao psd;
	@Override
	public PresentStatus findByName(String name) {
		return psd.findByName(name);
	}

	@Override
	public PresentStatus findById(int id) {
		return psd.findById(id);
	}
}
