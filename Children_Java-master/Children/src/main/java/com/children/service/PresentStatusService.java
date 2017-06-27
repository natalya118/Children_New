package com.children.service;

import com.children.model.PresentStatus;

public interface PresentStatusService {

	public PresentStatus findByName(String name);
	public PresentStatus findById(int id);
}
