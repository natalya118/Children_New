package com.children.model;

import java.io.Serializable;
import java.sql.Date;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.transaction.Transactional;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.NotEmpty;
import org.joda.time.LocalDate;

@Entity
@Transactional
public class Child implements Serializable {
	@Id @GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(nullable=false)
	private int id;
	
	@NotNull
	@Length(min=2, max=50)
	@NotEmpty
	@Column
	private String lastName;

	@NotNull
	@Length(min=2, max=50)
	@NotEmpty
	@Column
	private String firstName;

	@NotNull
	@Past
	@Column
	private Date  birthDate;
	
	@NotNull
	@NotEmpty
	@Column
	private String sex;
	
	@Column
	private String photo;
	
	@NotEmpty
	@Column
	private String description;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "house_id")
	private House house;
	
	@OneToMany(fetch = FetchType.LAZY, mappedBy = "child", cascade = CascadeType.PERSIST)
	private Set<Wish> wishes; 
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getLastName() {
		return lastName;
	}

	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	public String getFirstName() {
		return firstName;
	}

	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}

	public Date  getBirthDate() {
		return birthDate;
	}

	public void setBirthDate(Date  street) {
		this.birthDate = street;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public House getHouse() {
		return house;
	}

	public void setHouse(House house) {
		this.house = house;
	}

	public Set<Wish> getWishes() {
		return wishes;
	}

	public void setWishes(Set<Wish> wishes) {
		this.wishes = wishes;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}
	
}
