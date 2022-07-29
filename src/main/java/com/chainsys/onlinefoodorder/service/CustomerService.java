package com.chainsys.onlinefoodorder.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefoodorder.dao.CustomerRepository;
import com.chainsys.onlinefoodorder.pojo.Customer;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository crepo;

	public List<Customer> getCustomers() {
		List<Customer> listCr = crepo.findAll();
		return listCr;
	}

	public Customer save(Customer cr) {

		return crepo.save(cr);
	}
}
