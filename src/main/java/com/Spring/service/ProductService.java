package com.Spring.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.management.RuntimeErrorException;

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

	public void saveProduct(Product product) {
		productRepository.save(product);

	}

	public void deleteProductById(long id) {
		// System.out.println("Service1");
		this.productRepository.deleteById(id);
		// System.out.println("Service2");
	}

	public Product getProductById(long id) {
		Optional<Product> optional = productRepository.findById(id);

		Product product = null;
		if (optional.isPresent()) {
			product = optional.get();
		} else {
			throw new RuntimeErrorException(null, "Product Not Found for id" + id);
		}
		return product;
	}

}
