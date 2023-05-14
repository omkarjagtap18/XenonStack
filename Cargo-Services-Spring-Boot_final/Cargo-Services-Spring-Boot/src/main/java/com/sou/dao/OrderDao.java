package com.sou.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.sou.model.OrderD;

@Repository
public interface OrderDao extends CrudRepository<OrderD, Integer>{
	
}
