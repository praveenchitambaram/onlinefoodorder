package com.chainsys.onlinefoodorder.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.SequenceGenerator;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Order {
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO, generator = "ORDER_ID")
	@SequenceGenerator(name = "ORDER_ID", sequenceName = "ORDER_ID", allocationSize = 1)
	@Column(name = "ORDER_ID")
	private int orderId;
	@Column(name = "CUST_ID")
	private int customerId;
	@Column(name = "FOOD_NAME")
	private String foodName;
	@Column(name = "QUANTITY")
	private int foodQuantity;
	@Column(name = "PAYMENT_TYPE")
	private String paymentType;
	@Column(name = "PRICE")
	private float price;
	@Column(name = "TOTAL_AMOUNT")
	private float totalAmount;
	@Column(name = "address")
	private String address;
	@Column(name = "ord_date")
	private Date orderDate;

	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "cust_id", nullable = false, insertable = false, updatable = false)
	private Customer customer;

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getCustomerId() {
		return customerId;
	}

	public void setCustomerId(int customerId) {
		this.customerId = customerId;
	}

	public String getFoodName() {
		return foodName;
	}

	public void setFoodName(String foodName) {
		this.foodName = foodName;
	}

	public int getFoodQuantity() {
		return foodQuantity;
	}

	public void setFoodQuantity(int foodQuantity) {
		this.foodQuantity = foodQuantity;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public float getPrice() {
		return price;
	}

	public void setPrice(float price) {
		this.price = price;
	}

	public float getTotalAmount() {
		return totalAmount;
	}

	public void setTotalAmount(float totalAmount) {
		this.totalAmount = totalAmount;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

}
