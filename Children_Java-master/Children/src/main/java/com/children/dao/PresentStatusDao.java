package com.children.dao;

import com.children.model.PresentStatus;

public interface PresentStatusDao {
	public PresentStatus findByName(String name);
	public PresentStatus findById(int id);
}
