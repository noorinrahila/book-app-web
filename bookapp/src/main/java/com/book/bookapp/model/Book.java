package com.book.bookapp.model;

import java.time.LocalDate;

import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="books")
public class Book {
	@Id
    @GeneratedValue
	@Column(name="id")
	private Long id;
	@Column(name="NAME")
	private String name;
	@Column(name="price")
	private Integer price;
	@Column(name="released_date")
	private LocalDate released_date;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public LocalDate getReleased_date() {
		return released_date;
	}
	public void setReleased_date(LocalDate released_date) {
		this.released_date = released_date;
	}
	
	

}
