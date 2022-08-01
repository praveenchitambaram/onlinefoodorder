package com.chainsys.onlinefoodorder.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefoodorder.model.OrderDetails;

@Repository
public interface OderDetailsRepository extends CrudRepository<OrderDetails, Integer> {
	OrderDetails findById(int orderid);

	OrderDetails save(OrderDetails orderdetails);

	void deleteById(int orderid);

	List<OrderDetails> findAll();

}
