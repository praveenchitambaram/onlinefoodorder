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

import com.chainsys.onlinefoodorder.model.Order;
import com.chainsys.onlinefoodorder.model.OrderDetails;
import com.chainsys.onlinefoodorder.service.OrderDetailsService;

@Controller
@RequestMapping("/orderdetails")

public class OrderDetailsController {
	@Autowired
	OrderDetailsService orderdetailsservice;

	@GetMapping("/list")
	public String getOrderDetails(Model model) {
		List<OrderDetails> allOrderDetails = orderdetailsservice.getOrderDetails();
		model.addAttribute("allorderdetails", allOrderDetails);
		return "list-orderdetails";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Order theorderdetails = new Order();
		model.addAttribute("addorder", theorderdetails);
		return "add-order-form";
	}

	@PostMapping("/add")
	public String addNewOrderDetails(@ModelAttribute("addorderdetails") OrderDetails theorderdetails) {
		orderdetailsservice.save(theorderdetails);
		return "redirect:/orderdetails/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("orderid") int id, Model model) {
		OrderDetails theorderdetails = orderdetailsservice.findByid(id);
		model.addAttribute("updateorderdetails", theorderdetails);
		return "update-orderdetails-form";
	}

	@PostMapping("/updateorderdetail")
	public String UpdateOrder(@ModelAttribute("updateorderdetails") OrderDetails theorderdetails) {
		orderdetailsservice.save(theorderdetails);
		return "redirect:/orderdetails/list";

	}

	@GetMapping("/deleteorder")
	public String deleteorderdetails(@RequestParam("orderid") int id) {
		OrderDetails theorderdetails = orderdetailsservice.findByid(id);
		orderdetailsservice.deleteById(id);
		return "redirect:/orderdetails/list";
	}

	@GetMapping("/findorderdetailsbyid")
	public String findorderdetailsById(@RequestParam("orderid") int id, Model model) {
		OrderDetails theorderdetails = orderdetailsservice.findByid(id);
		model.addAttribute("findorderdetailsbyid", theorderdetails);
		return "find-orderdetails-by-id-form";
	}

}
