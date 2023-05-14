package com.sou.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sou.dao.CustomerDao;
import com.sou.model.Customer;

@Service
public class CarServiceImpl implements CustomerService{

	@Autowired
	private CustomerDao cdao;
	@Override
	public void add(Customer c) {
		// TODO Auto-generated method stub
		cdao.save(c);
	}

	@Override
	public void modify(Customer c) {
		// TODO Auto-generated method stub
		cdao.save(c);
		
	}

	@Override
	public void removeById(int id) {
		// TODO Auto-generated method stub
		cdao.deleteById(id);
		
	}

	@Override
	public Customer getById(int id) {
		// TODO Auto-generated method stub
		Optional<Customer> opt = cdao.findById(id);
		if(opt.isPresent()) {
			return opt.get();
		}
		return null;
	}

	@Override
	public List<Customer> getAll() {
		// TODO Auto-generated method stub
		Iterable<Customer> itr = cdao.findAll();
		List<Customer> lst = new ArrayList<Customer>();
		itr.forEach(ele->lst.add(ele));
		return lst;
	}

}
