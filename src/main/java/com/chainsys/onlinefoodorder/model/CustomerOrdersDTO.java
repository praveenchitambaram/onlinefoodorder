package com.chainsys.onlinefoodorder.model;

import java.util.ArrayList;
import java.util.List;

public class CustomerOrdersDTO {
	private Customer customer;
	private List<Order> orderList = new ArrayList<>();

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public List<Order> getOrderList() {
		return orderList;
	}

	public void addOrder(Order order) {
		orderList.add(order);

	}
}
