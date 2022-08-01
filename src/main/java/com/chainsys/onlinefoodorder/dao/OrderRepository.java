package com.chainsys.onlinefoodorder.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefoodorder.model.Order;

@Repository
public interface OrderRepository extends CrudRepository<Order, Integer> {
	Order findById(int orderid);

	Order save(Order odr);

	void deleteById(int orderid);

	List<Order> findAll();
}
