package com.chainsys.onlinefoodorder.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/praveen")
public class IndexController {
	@GetMapping("/index")
	public String getIndex(Model model) {
		return "index";
	}
}
