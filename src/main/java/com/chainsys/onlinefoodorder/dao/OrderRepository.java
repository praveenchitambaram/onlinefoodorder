package com.chainsys.onlinefoodorder.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefoodorder.model.Order;

@Repository
public interface OrderRepository extends CrudRepository<Order, Integer> {
	Order findById(int orderId);

	Order save(Order order);

	void deleteById(int orderId);

	List<Order> findAll();

	List<Order> findByCustomerId(int id);
}
