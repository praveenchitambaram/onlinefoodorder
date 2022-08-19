package com.chainsys.onlinefoodorder.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefoodorder.model.OrderDetail;

@Repository
public interface OrderDetailsRepository extends CrudRepository<OrderDetail, Integer> {
	OrderDetail findById(int orderId);

	OrderDetail save(OrderDetail orderDetails);

	void deleteById(int orderId);

	List<OrderDetail> findAll();

	List<OrderDetail> findByCustomerId(int id);

}
