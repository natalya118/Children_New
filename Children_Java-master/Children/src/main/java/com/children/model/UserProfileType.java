package com.children.model;

import java.io.Serializable;

public enum UserProfileType implements Serializable{
	USER("USER"),
	ADMINHOUSE("ADMIN-HOUSE"),
	ADMINMAIN("ADMIN-MAIN");
	
	String userProfileType;
	
	private UserProfileType(String userProfileType){
		this.userProfileType = userProfileType;
	}
	
	public String getUserProfileType(){
		return userProfileType;
	}
	
}
