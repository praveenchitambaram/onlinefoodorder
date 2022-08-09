package com.chainsys.onlinefoodorder.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefoodorder.model.Customer;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, Integer> {
	Customer findById(int CustomerId);

	Customer save(Customer coustomer);

	void deleteById(int CustomerId);

	List<Customer> findAll();
	
	Customer findByCustomerIdAndEmail(int id,String email);
	
}
