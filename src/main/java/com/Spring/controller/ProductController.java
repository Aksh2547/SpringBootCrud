package com.Spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.Spring.model.Product;
import com.Spring.service.ProductService;

@Controller
public class ProductController {
	
	@Autowired
	ProductService productService;

	@GetMapping("/")
	public ModelAndView login() {
		return new ModelAndView("login", "command", new Product());

	}

	@PostMapping("/addProduct")
	public String addProduct(Product product, Model model) {
		model.addAttribute("id", product.getId());
		model.addAttribute("name", product.getName());
		model.addAttribute("qty", product.getQty());
		model.addAttribute("username", product.getUsername());
		model.addAttribute("password", product.getPassword());
		return "welcome";
	}

	@RequestMapping("/product")
	public String home(Model model) {
		model.addAttribute("prod", productService.getAllProduct());
		return "product";
	}
}