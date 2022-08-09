package com.chainsys.onlinefoodorder.model;

import java.util.ArrayList;
import java.util.List;

public class CustomerOrderDetailsDTO {
	private Customer customer;
	private List<OrderDetail> orderDetailsList = new ArrayList<OrderDetail>();
	public Customer getCustomer() {
		return customer;
	}
	public void setCustomer(Customer customer) {
		this.customer = customer;
	}
	public List<OrderDetail> getOrderDetailsList() {
		return orderDetailsList;
	}
	public void addOrderDetails(OrderDetail orderDetails) {
		orderDetailsList.add(orderDetails);

	}
	
}
