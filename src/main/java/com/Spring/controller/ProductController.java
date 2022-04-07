package com.Spring.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.MediaType;
import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
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

	@PostMapping(path = "/addproduct", consumes = MediaType.APPLICATION_FORM_URLENCODED_VALUE, produces = {
			MediaType.APPLICATION_ATOM_XML_VALUE, MediaType.APPLICATION_JSON_VALUE })
	public String saveProduct(Model model, @RequestBody Product product) {
		productService.saveProduct(product);
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

	@GetMapping("/deleteProduct/{id}")
	public String deleteProduct(@PathVariable(value = "id") long id) {
		// System.out.println("controller");
		this.productService.deleteProductById(id);
		return "redirect:/product";
	}

	@GetMapping("/showformupdate/{id}")
	public String showFormForUpdate(@PathVariable(value = "id") long id, Model model) {

		Product product = productService.getProductById(id);
		model.addAttribute("product", product);
		return "update_product";

	}

}