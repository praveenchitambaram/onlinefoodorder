package com.chainsys.onlinefoodorder.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.onlinefoodorder.model.Customer;
import com.chainsys.onlinefoodorder.service.CustomerService;

@Controller
@RequestMapping("/customer")

public class CustomerController {
	@Autowired
	CustomerService customerService;

	@GetMapping("/list")
	public String getCustomer(Model model) {
		List<Customer> allCustomer = customerService.getCustomers();
		model.addAttribute("allcustomers", allCustomer);
		return "list-customers";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Customer theCustomer = new Customer();
		model.addAttribute("addcustomer", theCustomer);
		return "add-customer-form";
	}

	@PostMapping("/add")
	public String addNewCustomer(@ModelAttribute("addcustomer") Customer theCustomer) {
		customerService.save(theCustomer);
		return "redirect:/customer/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("customerid") int id, Model model) {
		Customer theCustomer = customerService.findByid(id);
		model.addAttribute("updatecustomer", theCustomer);
		return "update-customer-form";
	}

	@PostMapping("/updatecus")
	public String UpdateCustomer(@ModelAttribute("updatecustomer") Customer theCustomer) {
		customerService.save(theCustomer);
		return "redirect:/customer/list";

	}

	@GetMapping("/deletecustomer")
	public String deleteCustomer(@RequestParam("customerid") int id) {
		Customer theCustomer = customerService.findByid(id);
		customerService.deleteById(id);
		return "redirect:/customer/list";
	}

	@GetMapping("/findcustomerbyid")
	public String findCustomerById(@RequestParam("customerid") int id, Model model) {
		Customer theCustomer = customerService.findByid(id);
		model.addAttribute("findcustomerbyid", theCustomer);
		return "find-customer-by-id-form";
	}

}
