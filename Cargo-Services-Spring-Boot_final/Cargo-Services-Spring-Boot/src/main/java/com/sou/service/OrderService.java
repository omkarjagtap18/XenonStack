package com.sou.service;

import java.util.List;

import com.sou.model.OrderD;

public interface OrderService {
	void add(OrderD c);
	void removeById(int id);
	List<OrderD> getAll();
}
