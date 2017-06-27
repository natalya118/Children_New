package com.children.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class PresentStatus {

	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(nullable=false)
	private int id;
	
	@Column
	PresentStatusType status;
	
	public PresentStatusType getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = PresentStatusType.valueOf(status);
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	
}
