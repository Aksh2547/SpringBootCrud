package com.Spring.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;

import com.Spring.model.Product;

public interface ProductRepository extends CrudRepository<Product, Long> {

}
