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
	private OderDetailsRepository oderdetailsrepository;

	public List<OrderDetails> getOrderDetails() {
		List<OrderDetails> listOrderDetails = oderdetailsrepository.findAll();
		return listOrderDetails;
	}

	public OrderDetails save(OrderDetails orderdetails) {

		return oderdetailsrepository.save(orderdetails);
	}

	public OrderDetails findByid(int id) {
		return oderdetailsrepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		oderdetailsrepository.deleteById(id);
	}

}
