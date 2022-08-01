package com.chainsys.onlinefoodorder.service;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefoodorder.dao.CustomerRepository;
import com.chainsys.onlinefoodorder.model.Customer;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerrepository;

	public List<Customer> getCustomers() {
		List<Customer> listCustomer = customerrepository.findAll();
		return listCustomer;
	}

	public Customer save(Customer customer) {

		return customerrepository.save(customer);
	}
	public Customer findByid(int id) {
		return customerrepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		customerrepository.deleteById(id);
	}

}
