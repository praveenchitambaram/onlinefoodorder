package com.chainsys.onlinefoodorder.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
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

import com.chainsys.onlinefoodorder.model.FoodProduct;
import com.chainsys.onlinefoodorder.model.Order;
import com.chainsys.onlinefoodorder.service.CustomerService;
import com.chainsys.onlinefoodorder.service.FoodProductService;
import com.chainsys.onlinefoodorder.service.OrderService;

@Controller
@RequestMapping("/order")

public class OrderController {
	@Autowired
	OrderService orderService;
	@Autowired
	CustomerService customerservice;
	@Autowired
	private FoodProductService foodService;
	@GetMapping("/list")
	public String getOrder(Model model) {
		List<Order> allOrder = orderService.getOrder();
		model.addAttribute("allorder", allOrder);
		return "list-order";
	}

	@GetMapping("/addform")
	public String showAddForm(@RequestParam("foodId") int foodId, Model model,HttpServletRequest request) {
		Order theOrder = new Order();
		HttpSession session=request.getSession();
		int cusId=(int)session.getAttribute("custId"); 
		theOrder.setCustomerId(cusId);
		theOrder.setFoodId(foodId);
		FoodProduct foodProduct= foodService.findByid(foodId);
		theOrder.setPrice((int) foodProduct.getFoodPrice());
		model.addAttribute("addorder", theOrder);
		return "add-order-form";
	}

	@PostMapping("/add")
	public String addNewOrder(@ModelAttribute("addorder") Order theOrder, HttpSession session) {
		orderService.save(theOrder);
		session.setAttribute("orderId", theOrder.getOrderId());
		return "redirect:/order/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("orderId") int id, Model model) {
		Order theOrder = orderService.findByid(id);
		model.addAttribute("updateorder", theOrder);
		return "update-order-form";
	}

	@PostMapping("/updateorderform")
	public String updateOrder(@Valid @ModelAttribute("updateorder") Order theOrder, Errors errors) {
		if (errors.hasErrors()) {
			return "update-order-form";
		}
		orderService.save(theOrder);
		return "redirect:/order/list";

	}

	@GetMapping("/deleteorder")
	public String deleteorder(@RequestParam("orderId") int id) {
		orderService.deleteById(id);
		return "redirect:/order/list";
	}

	@GetMapping("/findorderbyid")
	public String findorderById(@RequestParam("orderId") int id, Model model) {
		Order theorder = orderService.findByid(id);
		model.addAttribute("findorderbyid", theorder);
		return "find-order-by-id-form";
	}

}
