package com.children.model;

import java.io.Serializable;
import java.util.Set;

import javax.persistence.*;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.transaction.Transactional;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;

@Entity
@Transactional
public class HouseRequest implements Serializable{
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(nullable=false)
	private int id;
	
	@NotNull
	@Length(min=3)
	@NotEmpty
	@Column
	private String name;
	
	@NotNull
	@NotEmpty
	@Column
	private String city;

	@NotNull
	@NotEmpty
	@Column
	private String street;

	@NotNull
	@NotEmpty
	@Column
	private String number;

	@NotEmpty
	@Column
	private String description;

	@Length(min=4)
	@NotNull
	@NotEmpty
	@Column(name = "sso_id", unique = true)
	private String ssoId;
	
	@NotNull
	//@Length(min=6, max=20)
	@NotEmpty
	@Column(name = "password")
	private String password;

	@NotNull
	@Length(min=2)
	@Column(name = "first_name")
	private String firstName;

	@NotNull
	@Length(min=2)
	@Column(name = "last_name")
	private String lastName;

	@NotNull
	@Length(min=3)
	@Pattern(regexp="^\\w+@[a-zA-Z_]+?\\.[a-zA-Z]{2,3}$")
	@Email
	@Column(name = "email")
	private String email;
	
	@Column(name = "photo_url")
	private String photoUrl;


	public String getPhotoUrl() {
		return photoUrl;
	}

	public void setPhotoUrl(String photoUrl) {
		this.photoUrl = photoUrl;
	}

	public String getSsoId() {
		return ssoId;
	}

	public void setSsoId(String ssoId) {
		this.ssoId = ssoId;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getCity() {
		return city;
	}

	public void setCity(String city) {
		this.city = city;
	}

	public String getStreet() {
		return street;
	}

	public void setStreet(String street) {
		this.street = street;
	}

	public String getNumber() {
		return number;
	}

	public void setNumber(String number) {
		this.number = number;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}
	

}
