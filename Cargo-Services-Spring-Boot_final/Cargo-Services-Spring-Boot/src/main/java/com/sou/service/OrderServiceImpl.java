package com.sou.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sou.dao.OrderDao;
import com.sou.model.OrderD;
import com.sou.model.Product;

@Service
public class OrderServiceImpl implements OrderService {

	@Autowired
	private OrderDao orderdao;
	@Override
	public void add(OrderD c) {
		orderdao.save(c);
		
	}

	@Override
	public void removeById(int id) {
		orderdao.deleteById(id);
		
	}

	@Override
	public List<OrderD> getAll() {
		Iterable <OrderD> itr=orderdao.findAll();
		List<OrderD> lst = new ArrayList<OrderD>();
		itr.forEach(ele->lst.add(ele));
		return lst;
		
	}

}
