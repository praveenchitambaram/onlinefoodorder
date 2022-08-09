package com.chainsys.onlinefoodorder.service;

import java.util.Iterator;
import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.chainsys.onlinefoodorder.dao.CustomerRepository;
import com.chainsys.onlinefoodorder.dao.OrderDetailsRepository;
import com.chainsys.onlinefoodorder.dao.OrderRepository;
import com.chainsys.onlinefoodorder.model.Customer;
import com.chainsys.onlinefoodorder.model.CustomerOrderDetailsDTO;
import com.chainsys.onlinefoodorder.model.CustomerOrdersDTO;
import com.chainsys.onlinefoodorder.model.Order;
import com.chainsys.onlinefoodorder.model.OrderDetail;

@Service
public class CustomerService {
	@Autowired
	private CustomerRepository customerrepository;

	@Autowired
	private OrderRepository orderrepository;

	@Autowired
	private OrderDetailsRepository orderdetailsrepository;

	public List<Customer> getCustomers() {
		List<Customer> listCustomer = customerrepository.findAll();
		return listCustomer;
	}

	public Customer save(Customer customer) {

		return customerrepository.save(customer);
	}

	public Customer findById(int id) {
		return customerrepository.findById(id);
	}

	@Transactional
	public void deleteById(int id) {
		customerrepository.deleteById(id);
	}

	

	@Transactional
	public CustomerOrdersDTO getCustomerAndOrders(int id) {

		Customer cus = findById(id);
		CustomerOrdersDTO crdto = new CustomerOrdersDTO();
		crdto.setCustomer(cus);
		List<Order> order = orderrepository.findByCustomerId(id);
		Iterator<Order> itr = order.iterator();
		while (itr.hasNext()) {
			crdto.addOrder((Order) itr.next());
		}
		return crdto;

	}

	@Transactional
	public CustomerOrderDetailsDTO getCustomerAndOrdersDetails(int id) {

		Customer customer = findById(id);
		CustomerOrderDetailsDTO customerOrderDetailsDTO = new CustomerOrderDetailsDTO();
		customerOrderDetailsDTO.setCustomer(customer);
		List<OrderDetail> orderDetailList = orderdetailsrepository.findByCustomerId(id);
		Iterator<OrderDetail> itr = orderDetailList.iterator();
		while (itr.hasNext()) {
			customerOrderDetailsDTO.addOrderDetails((OrderDetail) itr.next());
		}
		return customerOrderDetailsDTO;
	}
	public Customer getCustomerIdAndEmail(int id, String email) {
		return customerrepository.findByCustomerIdAndEmail(id, email);
	}
}
