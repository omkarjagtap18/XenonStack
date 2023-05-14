package com.sou.service;

import java.util.List;

import com.sou.model.Customer;

public interface CustomerService {

	void add(Customer c);
	void modify(Customer c);
	void removeById(int id);
	Customer getById(int id);
	List<Customer> getAll();
}
