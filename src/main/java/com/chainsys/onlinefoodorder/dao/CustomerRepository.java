package com.chainsys.onlinefoodorder.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefoodorder.model.Customer;

@Repository
public interface CustomerRepository extends CrudRepository<Customer, Integer> {
	Customer findByCustomerId(long id);

	Customer save(Customer coustomer);

	void deleteById(int customerId);

	List<Customer> findAll();
	
	Customer findByEmailAndPassword(String email,String password);
	
}
