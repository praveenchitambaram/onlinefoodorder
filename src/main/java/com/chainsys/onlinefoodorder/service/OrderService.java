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
	private OrderRepository orderRepository;

	public List<Order> getOrder() {
		List<Order> listOrder = orderRepository.findAll();
		return listOrder;
	}

	public Order save(Order order) {

		return orderRepository.save(order);
	}

	public Order findByid(int id) {
		return orderRepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		orderRepository.deleteById(id);
	}

}
