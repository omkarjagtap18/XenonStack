package com.sou.service;



import java.util.List;

import com.sou.model.Customer;
import com.sou.model.Product;

public interface ProductService {

  void add(Product p);
  void modify(Product p);
	void removeById(int id);
	Product getById(int id);
	List<Product> getAll();
	
}
