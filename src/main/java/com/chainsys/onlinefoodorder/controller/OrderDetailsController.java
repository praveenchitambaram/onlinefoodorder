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

import com.chainsys.onlinefoodorder.model.OrderDetail;
import com.chainsys.onlinefoodorder.service.OrderDetailsService;

@Controller
@RequestMapping("/orderdetails")

public class OrderDetailsController {
	@Autowired
	OrderDetailsService orderDetailsService;

	@GetMapping("/list")
	public String getOrderDetails(Model model) {
		List<OrderDetail> allOrderDetails = orderDetailsService.getOrderDetails();
		model.addAttribute("allorderdetails", allOrderDetails);
		return "list-orderdetails";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		OrderDetail theOrderDetails = new OrderDetail();
		model.addAttribute("addorderdetails", theOrderDetails);
		return "add-orderdetails-form";
	}

	@PostMapping("/add")
	public String addNewOrderDetails(@Valid @ModelAttribute("addorderdetails") OrderDetail theOrderDetails,
			Errors errors) {
		if (errors.hasErrors()) {
			return "add-orderdetails-form";
		}
		orderDetailsService.save(theOrderDetails);
		return "redirect:/orderdetails/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("orderid") int id, Model model) {
		OrderDetail theOrderDetails = orderDetailsService.findByid(id);
		model.addAttribute("updateorderdetails", theOrderDetails);
		return "update-orderdetails-form";
	}

	@PostMapping("/updateorderdetail")
	public String updateOrder(@Valid @ModelAttribute("updateorderdetails") OrderDetail theOrderDetails, Errors errors) {
		if (errors.hasErrors()) {
			return "update-orderdetails-form";
		}
		orderDetailsService.save(theOrderDetails);
		return "redirect:/orderdetails/list";

	}

	@GetMapping("/deleteorder")
	public String deleteorderdetails(@RequestParam("orderid") int id) {
		orderDetailsService.deleteById(id);
		return "redirect:/orderdetails/list";
	}

	@GetMapping("/findorderdetailsbyid")
	public String findorderdetailsById(@RequestParam("orderid") int id, Model model) {
		OrderDetail theOrderDetails = orderDetailsService.findByid(id);
		model.addAttribute("findorderdetailsbyid", theOrderDetails);
		return "find-orderdetails-by-id-form";
	}

}
