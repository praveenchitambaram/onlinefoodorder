package com.chainsys.onlinefoodorder.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.chainsys.onlinefoodorder.pojo.Customer;
import com.chainsys.onlinefoodorder.service.CustomerService;

@Controller
@RequestMapping("/customer")

public class CustomerController {
	@Autowired
	CustomerService cusservice;

	@GetMapping("/list")
	public String getCustomer(Model model) {
		List<Customer> allCustomer = cusservice.getCustomers();
		model.addAttribute("allcustomers", allCustomer);
		return "list-customers";
	}

}
