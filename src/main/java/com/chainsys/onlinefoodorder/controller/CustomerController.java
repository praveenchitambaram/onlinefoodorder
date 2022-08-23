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
		return "redirect:/customer/findcustomerbyid?customerid=" + theCustomer.getCustomerId();
	}

	@GetMapping("/updatecustomerform")
	public String showUpdateForm(@RequestParam("customerid") int id, Model model) {
		Customer theCustomer = customerService.findById(id);
		model.addAttribute("updatecustomer", theCustomer);
		return "update-customer-form";
	}

	@PostMapping("/updatecustomer")
	public String updateCustomer(@Valid @ModelAttribute("updatecustomer") Customer theCustomer, Errors errors) {
		if (errors.hasErrors()) {
			return "update-customer-form";
		}
		customerService.save(theCustomer);
		return "redirect:/customer/customerlist";

	}

	@GetMapping("/deletecustomer")
	public String deleteCustomer(@RequestParam("customerid") int id) {
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

	@GetMapping("/customerloginpage")
	public String customerLogin(Model model) {
		Customer theCustomer = new Customer();
		model.addAttribute("cuslogin", theCustomer);
		return "customerloginpages";
	}

	@PostMapping("/customerlogin")
	public String checkingAccess(@ModelAttribute("cuslogin") Customer theCus, Model model) {
		Customer customer = customerService.getEmailAndPassword(theCus.getEmail(), theCus.getPassword());

		if (customer != null) {
			return "redirect:/foodproduct/list";
		} else {
			model.addAttribute("result", "Please enter the ValidEmail or password");
		}
		return "customerloginpages";
	}

	@GetMapping("/homepage")
	public String home(Model model) {
		return "home";
	}

}
