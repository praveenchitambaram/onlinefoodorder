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

import com.chainsys.onlinefoodorder.model.FoodProduct;
import com.chainsys.onlinefoodorder.service.FoodProductService;

@Controller
@RequestMapping("/foodproduct")

public class FoodProductController {
	@Autowired
	FoodProductService foodProductService;

	@GetMapping("/list")
	public String getFoodProduct(Model model) {
		List<FoodProduct> allFoodProduct = foodProductService.getFoodProduct();
		model.addAttribute("allfoodproduct", allFoodProduct);
		return "list-foodproduct";
	}

	@GetMapping("/addform")
	public String showAddForm(Model model) {
		FoodProduct theFoodProduct = new FoodProduct();
		model.addAttribute("addfoodproduct", theFoodProduct);
		return "add-foodproduct-form";
	}

	@PostMapping("/add")
	public String addNewFoodProduct(@Valid@ModelAttribute("addfoodproduct") FoodProduct theFoodProduct,
			Errors errors) {
		if (errors.hasErrors()) {
			return "add-foodproduct-form";
		}
		foodProductService.save(theFoodProduct);
		return "redirect:/foodproduct/list";
	}

	@GetMapping("/updateform")
	public String showUpdateForm(@RequestParam("foodid") int id, Model model) {
		FoodProduct theFoodProduct = foodProductService.findByid(id);
		model.addAttribute("updatefoodproduct", theFoodProduct);
		return "update-foodproduct-form";
	}

	@PostMapping("/updatefp")
	public String UpdateFoodProduct(@Valid@ModelAttribute("updatefoodproduct") FoodProduct theFoodProduct,
			Errors errors) {
		if (errors.hasErrors()) {
			return "update-foodproduct-form";
		}
		foodProductService.save(theFoodProduct);
		return "redirect:/foodproduct/list";

	}

	@GetMapping("/deletefoodproduct")
	public String deletefoodproduct(@RequestParam("foodproductid") int id) {
		FoodProduct theFoodProduct = foodProductService.findByid(id);
		foodProductService.deleteById(id);
		return "redirect:/foodproduct/list";
	}

	@GetMapping("/findfoodproductbyid")
	public String findFoodProductById(@RequestParam("foodproductid") int id, Model model) {
		FoodProduct theFoodProduct = foodProductService.findByid(id);
		model.addAttribute("findfoodproductbyid", theFoodProduct);
		return "find-foodproduct-by-id-form";
	}

}
