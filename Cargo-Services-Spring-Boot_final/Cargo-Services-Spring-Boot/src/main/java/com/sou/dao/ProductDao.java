package com.sou.dao;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sou.model.Product;

@Repository
public interface ProductDao extends JpaRepository<Product,Integer>{
		
}
