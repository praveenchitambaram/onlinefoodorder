package com.chainsys.onlinefoodorder.model;

import java.util.Date;
import java.util.TimeZone;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "orders")
public class Order {
	@Id
	@Column(name = "order_id")
	private int orderId;
	@Column(name = "cust_id")
	private int custamerId;
	@Column(name = "ord_date")
	private Date orderDate;
	@Column(name = "ord_time")
	private TimeZone orderTime;
	@Column(name = "payment_type")
	private String paymentType;
	@Column(name = "order_amount")
	private float orderAmount;
	@Column(name = "delivery_amount")
	private float deliveryAmount;
	@Column(name = "net_amount")
	private float netAmount;
	@Column(name = "delivery_date")
	private Date deliveryDate;
	@Column(name = "delivery_time")
	private TimeZone deliveryTime;

	public int getOrderId() {
		return orderId;
	}

	public void setOrderId(int orderId) {
		this.orderId = orderId;
	}

	public int getCustamerId() {
		return custamerId;
	}

	public void setCustamerId(int custamerId) {
		this.custamerId = custamerId;
	}

	public Date getOrderDate() {
		return orderDate;
	}

	public void setOrderDate(Date orderDate) {
		this.orderDate = orderDate;
	}

	public TimeZone getOrderTime() {
		return orderTime;
	}

	public void setOrderTime(TimeZone orderTime) {
		this.orderTime = orderTime;
	}

	public String getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(String paymentType) {
		this.paymentType = paymentType;
	}

	public float getOrderAmount() {
		return orderAmount;
	}

	public void setOrderAmount(float orderAmount) {
		this.orderAmount = orderAmount;
	}

	public float getDeliveryAmount() {
		return deliveryAmount;
	}

	public void setDeliveryAmount(float deliveryAmount) {
		this.deliveryAmount = deliveryAmount;
	}

	public float getNetAmount() {
		return netAmount;
	}

	public void setNetAmount(float netAmount) {
		this.netAmount = netAmount;
	}

	public Date getDeliveryDate() {
		return deliveryDate;
	}

	public void setDeliveryDate(Date deliveryDate) {
		this.deliveryDate = deliveryDate;
	}

	public TimeZone getDeliveryTime() {
		return deliveryTime;
	}

	public void setDeliveryTime(TimeZone deliveryTime) {
		this.deliveryTime = deliveryTime;
	}

}
