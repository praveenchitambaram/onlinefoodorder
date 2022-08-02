package com.chainsys.onlinefoodorder.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefoodorder.dao.OderDetailsRepository;
import com.chainsys.onlinefoodorder.model.OrderDetails;

@Service
public class OrderDetailsService {
	@Autowired
	private OderDetailsRepository oderDetailsRepository;

	public List<OrderDetails> getOrderDetails() {
		List<OrderDetails> listOrderDetails = oderDetailsRepository.findAll();
		return listOrderDetails;
	}

	public OrderDetails save(OrderDetails orderdetails) {

		return oderDetailsRepository.save(orderdetails);
	}

	public OrderDetails findByid(int id) {
		return oderDetailsRepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		oderDetailsRepository.deleteById(id);
	}

}
