package com.chainsys.onlinefoodorder.controller;

import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.chainsys.onlinefoodorder.model.Customer;
import com.chainsys.onlinefoodorder.model.CustomerOrderDetailsDTO;
import com.chainsys.onlinefoodorder.model.CustomerOrdersDTO;
import com.chainsys.onlinefoodorder.service.CustomerService;

@Controller
@RequestMapping("/customer")

public class CustomerController {
	@Autowired
	CustomerService customerService;

	@GetMapping("/customerlist")
	public String getCustomer(Model model) {
		List<Customer> allCustomer = customerService.getCustomers();
		model.addAttribute("allcustomers", allCustomer);
		return "list-customers";
	}

	@GetMapping("/addcustomerform")
	public String showAddForm(Model model) {
		Customer theCustomer = new Customer();
		model.addAttribute("addcustomer", theCustomer);
		return "add-customer-form";
	}

	@PostMapping("/add")
	public String addNewCustomer(@Valid @ModelAttribute("addcustomer") Customer theCustomer, Errors errors) {
		if (errors.hasErrors()) {
			return "add-customer-form";
		}
		customerService.save(theCustomer);
		return "redirect:/customer/customerlist";
	}

	@GetMapping("/updatecustomerform")
	public String showUpdateForm(@RequestParam("customerid") int id, Model model) {
		Customer theCustomer = customerService.findById(id);
		model.addAttribute("updatecustomer", theCustomer);
		return "update-customer-form";
	}

	@PostMapping("/updatecustomer")
	public String UpdateCustomer(@Valid @ModelAttribute("updatecustomer") Customer theCustomer, Errors errors) {
		if (errors.hasErrors()) {
			return "update-customer-form";
		}
		customerService.save(theCustomer);
		return "redirect:/customer/customerlist";

	}

	@GetMapping("/deletecustomer")
	public String deleteCustomer(@RequestParam("customerid") int id) {
		Customer theCustomer = customerService.findById(id);
		customerService.deleteById(id);
		return "redirect:/customer/customerlist";
	}

	@GetMapping("/findcustomerbyid")
	public String findCustomerById(@RequestParam("customerid") int id, Model model) {
		Customer theCustomer = customerService.findById(id);
		model.addAttribute("findcustomerbyid", theCustomer);
		return "find-customer-by-id-form";
	}

	@GetMapping("/getcustomerorders")
	public String getCustomerOrders(@RequestParam("customerid") int id, Model model) {
		CustomerOrdersDTO crdto = customerService.getCustomerAndOrders(id);
		model.addAttribute("getcus", crdto.getCustomer());
		model.addAttribute("orderlist", crdto.getOrderList());
		return "list-customer-order";
	}

	@GetMapping("/getcustomerorderdetails")
	public String getCustomerOrdersDetails(@RequestParam("customerid") int id, Model model) {
		CustomerOrderDetailsDTO crdto = customerService.getCustomerAndOrdersDetails(id);
		model.addAttribute("getcus", crdto.getCustomer());
		model.addAttribute("orderdetailslist", crdto.getOrderDetailsList());
		return "list-customer-orderdetails";
	}

	@GetMapping("/customerpage")
	public String CustomerLogin(Model model) {
		Customer customer = new Customer();
		model.addAttribute("login", customer);
		return "customer-login-form";
	}

	@PostMapping("/customerlogin")
	public String checkingAccess(@ModelAttribute("login") Customer cus) {
		Customer customer = customerService.getCustomerIdAndEmail(cus.getCustomerId(), cus.getEmail());
		if (customer != null) {
			return "redirect:/foodproduct/list";
		} else
			return "invalid customer error";
	}

}
