package com.Spring.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.Spring.model.Product;
import com.Spring.repository.ProductRepository;

@Service
public class ProductService {

	@Autowired
	ProductRepository productRepository;

	public List<Product> getAllProduct() {
		List<Product> productList = new ArrayList<Product>();
		productRepository.findAll().forEach(list -> productList.add(list));
		return productList;
	}

}
