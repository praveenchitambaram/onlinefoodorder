package com.chainsys.onlinefoodorder.dao;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.chainsys.onlinefoodorder.pojo.Customer;
@Repository
public interface CustomerRepository extends CrudRepository<Customer, Integer> {
	Customer findById(int id);

	Customer save(Customer crs);

	void deleteById(int Customer_Id);

	List<Customer> findAll();

//	    List<Customer> getCustomer();
}
