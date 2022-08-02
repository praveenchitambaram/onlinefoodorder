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
import com.chainsys.onlinefoodorder.service.OrderService;

@Controller
@RequestMapping("/order")

public class OrderController {
	@Autowired
	OrderService orderService;

	@GetMapping("/list")
	public String getOrder(Model model) {
		List<Order> allOrder = orderService.getOrder();
		model.addAttribute("allorder", allOrder);
		return "list-order";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		Order theOrder = new Order();
		model.addAttribute("addorder", theOrder);
		return "add-order-form";
	}

	@PostMapping("/add")
	public String addNewOrder(@ModelAttribute("addorder") Order theOrder) {
		theOrder.setOrderDate();
		theOrder.setOrderTime();
		orderService.save(theOrder);
		return "redirect:/foodproduct/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("foodid") int id, Model model) {
		Order theOrder = orderService.findByid(id);
		model.addAttribute("updateorder", theOrder);
		return "update-order-form";
	}

	@PostMapping("/updateorder")
	public String UpdateOrder(@ModelAttribute("updateorder") Order theOrder) {
		orderService.save(theOrder);
		return "redirect:/order/list";

	}

	@GetMapping("/deleteorder")
	public String deleteorder(@RequestParam("ordid") int id) {
		Order theorder = orderService.findByid(id);
		orderService.deleteById(id);
		return "redirect:/order/list";
	}

	@GetMapping("/findorderbyid")
	public String findorderById(@RequestParam("ordid") int id, Model model) {
		Order theorder = orderService.findByid(id);
		model.addAttribute("findorderbyid", theorder);
		return "find-order-by-id-form";
	}

}
