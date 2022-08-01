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

import com.chainsys.onlinefoodorder.model.FoodProduct;
import com.chainsys.onlinefoodorder.service.FoodProductService;

@Controller
@RequestMapping("/foodproduct")

public class FoodProductController {
	@Autowired
	FoodProductService foodproductservice;

	@GetMapping("/list")
	public String getFoodProduct(Model model) {
		List<FoodProduct> allFoodProduct = foodproductservice.getFoodProduct();
		model.addAttribute("allfoodproduct", allFoodProduct);
		return "list-foodproduct";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		FoodProduct thefoodproduct = new FoodProduct();
		model.addAttribute("addfoodproduct", thefoodproduct);
		return "add-foodproduct-form";
	}

	@PostMapping("/add")
	public String addNewFoodProduct(@ModelAttribute("addfoodproduct") FoodProduct theFoodProduct) {
		foodproductservice.save(theFoodProduct);
		return "redirect:/foodproduct/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("foodid") int id, Model model) {
		FoodProduct thefoodproduct = foodproductservice.findByid(id);
		model.addAttribute("updatefoodproduct", thefoodproduct);
		return "update-foodproduct-form";
	}

	@PostMapping("/updatefp")
	public String UpdateFoodProduct(@ModelAttribute("updatefoodproduct") FoodProduct thefoodproduct) {
		foodproductservice.save(thefoodproduct);
		return "redirect:/foodproduct/list";

	}

	@GetMapping("/deletefoodproduct")
	public String deletefoodproduct(@RequestParam("foodproductid") int id) {
		FoodProduct thefoodproduct = foodproductservice.findByid(id);
		foodproductservice.deleteById(id);
		return "redirect:/foodproduct/list";
	}

	@GetMapping("/findfoodproductbyid")
	public String findFoodProductById(@RequestParam("foodproductid") int id, Model model) {
		FoodProduct thefoodproduct = foodproductservice.findByid(id);
		model.addAttribute("findfoodproductbyid", thefoodproduct);
		return "find-foodproduct-by-id-form";
	}

}
