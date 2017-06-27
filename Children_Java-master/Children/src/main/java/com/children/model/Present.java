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

	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "wish_id")
	private Wish wish;
	
	@NotNull
	@ManyToOne(fetch = FetchType.EAGER)
	@JoinColumn(name = "presentStatus_id")
	private PresentStatus presentStatus;
	
	@Column
	private String letter;
	
	
	@ManyToOne(fetch = FetchType.EAGER)
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
	public Wish getWish() {
		return wish;
	}
	public void setWish(Wish wish) {
		this.wish = wish;
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
	public PresentStatus getPresentStatus() {
		return presentStatus;
	}
	public void setPresentStatus(PresentStatus presentStatus) {
		this.presentStatus = presentStatus;
	}
	
	
}
