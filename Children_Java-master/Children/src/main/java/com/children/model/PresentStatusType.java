package com.children.model;

import java.io.Serializable;

public enum PresentStatusType implements Serializable{
	CREATED("CREATED"),
	INPROGRESS("IN-PROGRESS"),
	CANCELED("CANCELED"),
	DELIVERED("DELIVERED");
	
	String presentStatusType;
	
	private PresentStatusType(String presentStatusType){
		this.presentStatusType = presentStatusType;
	}
	
	public String getPresentStatusType(){
		return presentStatusType;
	}
	
}
