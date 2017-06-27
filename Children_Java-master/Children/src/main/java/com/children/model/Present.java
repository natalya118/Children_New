package com.children.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;

import org.hibernate.validator.constraints.Length;

@Entity
public class Present {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(nullable=false)
	private int id;
	
	@NotNull
	@Column
	private Date dateOpened;
	
	@Column
	private Date dateReceived;
	
	@NotNull
	@Length(min=0)
	@Column
	private String parcelNumber;

	@NotNull
	@Column
	private int wishId;
	
	@NotNull
	@Column 
	private int presentStatusId;
	
	@Column
	private String letter;
	
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "user_id")
	private User user;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public Date getDateOpened() {
		return dateOpened;
	}
	public void setDateOpened(Date dateOpened) {
		this.dateOpened = dateOpened;
	}
	public Date getDateReceived() {
		return dateReceived;
	}
	public void setDateReceived(Date dateReceived) {
		this.dateReceived = dateReceived;
	}
	public String getParcelNumber() {
		return parcelNumber;
	}
	public void setParcelNumber(String parcelNumber) {
		this.parcelNumber = parcelNumber;
	}
	public int getWishId() {
		return wishId;
	}
	public void setWishId(int wishId) {
		this.wishId = wishId;
	}
	public String getLetter() {
		return letter;
	}
	public void setLetter(String letter) {
		this.letter = letter;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public int getPresentStatusId() {
		return presentStatusId;
	}
	public void setPresentStatusId(int presentStatusId) {
		this.presentStatusId = presentStatusId;
	}
	
	
	
}
