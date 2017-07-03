package com.book.bookapp.model;

import java.time.LocalDate;


import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Order {
	@Id
	@GeneratedValue
	@Column(name = "id")
	private Long id;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@Column(name = "total_price")
	private Integer totalPrice;
	
	@OneToMany(mappedBy = "order", fetch=FetchType.EAGER, cascade = CascadeType.ALL)
	private List<OrderItem> orderItems = new ArrayList<>();

	@Column(name = "ordered_date")
	private LocalDateTime orderedDate;

	@Column(name = "cancelled_date")
	private LocalDate cancelledDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Integer getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(Integer totalPrice) {
		this.totalPrice = totalPrice;
	}

	public List<OrderItem> getOrderItems() {
		return orderItems;
	}

	public void setOrderItems(List<OrderItem> orderItems) {
		this.orderItems = orderItems;
	}

	public LocalDateTime getOrderedDate() {
		return orderedDate;
	}

	public void setOrderedDate(LocalDateTime orderedDate) {
		this.orderedDate = orderedDate;
	}

	public LocalDate getCancelledDate() {
		return cancelledDate;
	}

	public void setCancelledDate(LocalDate cancelledDate) {
		this.cancelledDate = cancelledDate;
	}

	public LocalDate getModifiedDate() {
		return modifiedDate;
	}

	public void setModifiedDate(LocalDate modifiedDate) {
		this.modifiedDate = modifiedDate;
	}

	public LocalDate getDeliveredDate() {
		return deliveredDate;
	}

	public void setDeliveredDate(LocalDate deliveredDate) {
		this.deliveredDate = deliveredDate;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getReason() {
		return reason;
	}

	public void setReason(String reason) {
		this.reason = reason;
	}

	@Column(name = "modified_date")
	private LocalDate modifiedDate;

	@Column(name = "delivered_date")
	private LocalDate deliveredDate;

	@Column(name = "status")
	private String status;

	@Column(name = "reason")
	private String reason;

	@Override
	public String toString() {
		return "Order [id=" + id + ", user=" + user + ", total_price=" + totalPrice + ", ordered_date=" + orderedDate
				+ ", cancelled_date=" + cancelledDate + ", modified_date=" + modifiedDate + ", delivered_date="
				+ deliveredDate + ", status=" + status + ", reason=" + reason + "]";
	}

}
