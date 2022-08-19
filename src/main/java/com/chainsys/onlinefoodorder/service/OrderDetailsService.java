package com.chainsys.onlinefoodorder.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefoodorder.dao.OrderDetailsRepository;
import com.chainsys.onlinefoodorder.model.OrderDetail;

@Service
public class OrderDetailsService {
	@Autowired
	private OrderDetailsRepository oderDetailsRepository;

	public List<OrderDetail> getOrderDetails() {
		return oderDetailsRepository.findAll();
	}

	public OrderDetail save(OrderDetail orderdetails) {

		return oderDetailsRepository.save(orderdetails);
	}

	public OrderDetail findByid(int id) {
		return oderDetailsRepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		oderDetailsRepository.deleteById(id);
	}

}
