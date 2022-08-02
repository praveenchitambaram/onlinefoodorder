package com.chainsys.onlinefoodorder.model;

import java.util.Calendar;
import java.util.Date;

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
	private String orderDate;
	@Column(name = "ord_time")
	private String orderTime;
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
	private String deliveryTime;

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

	public String getOrderDate() {
		return orderDate;
	}

	public void setOrderDate() {
		Calendar calendar = Calendar.getInstance();
		String orderDate = calendar.get(Calendar.DATE) + "/" + (calendar.get(Calendar.MONTH) + 1) + "/"
				+ calendar.get(Calendar.YEAR);
		this.orderDate = orderDate;
	}

	public String getOrderTime() {
		return orderTime;
	}

	public void setOrderTime() {
		Calendar calendar = Calendar.getInstance();
		String orderTime = calendar.get(Calendar.HOUR) + ":" + calendar.get(Calendar.MINUTE);
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

	public String getDeliveryTime() {
		return deliveryTime;
	}

	public void setDeliveryTime(String deliveryTime) {
		this.deliveryTime = deliveryTime;
	}

}
