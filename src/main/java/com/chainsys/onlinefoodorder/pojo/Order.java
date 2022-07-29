package com.chainsys.onlinefoodorder.pojo;

import java.util.Date;
import java.util.TimeZone;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity
@Table(name="orders")
public class Order {
	@Id
	private int order_id;
	private int cust_id;
	private Date ord_date;
	private TimeZone ord_time;
	private String payment_type;
	private float floorder_amount;
	private float delivery_amount;
	private float net_amount;
	private Date delivery_date;
	private TimeZone delivery_time;

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public int getCust_id() {
		return cust_id;
	}

	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}

	public Date getOrd_date() {
		return ord_date;
	}

	public void setOrd_date(Date ord_date) {
		this.ord_date = ord_date;
	}

	public TimeZone getOrd_time() {
		return ord_time;
	}

	public void setOrd_time(TimeZone ord_time) {
		this.ord_time = ord_time;
	}

	public String getPayment_type() {
		return payment_type;
	}

	public void setPayment_type(String payment_type) {
		this.payment_type = payment_type;
	}

	public float getFloorder_amount() {
		return floorder_amount;
	}

	public void setFloorder_amount(float floorder_amount) {
		this.floorder_amount = floorder_amount;
	}

	public float getDelivery_amount() {
		return delivery_amount;
	}

	public void setDelivery_amount(float delivery_amount) {
		this.delivery_amount = delivery_amount;
	}

	public float getNet_amount() {
		return net_amount;
	}

	public void setNet_amount(float net_amount) {
		this.net_amount = net_amount;
	}

	public Date getDelivery_date() {
		return delivery_date;
	}

	public void setDelivery_date(Date delivery_date) {
		this.delivery_date = delivery_date;
	}

	public TimeZone getDelivery_time() {
		return delivery_time;
	}

	public void setDelivery_time(TimeZone delivery_time) {
		this.delivery_time = delivery_time;
	}

}
