package com.chainsys.onlinefoodorder.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefoodorder.dao.OrderRepository;
import com.chainsys.onlinefoodorder.model.Order;

@Service
public class OrderService {
	@Autowired
	private OrderRepository orderrepository;

	public List<Order> getOrder() {
		List<Order> listOrder = orderrepository.findAll();
		return listOrder;
	}

	public Order save(Order order) {

		return orderrepository.save(order);
	}

	public Order findByid(int id) {
		return orderrepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		orderrepository.deleteById(id);
	}

}
