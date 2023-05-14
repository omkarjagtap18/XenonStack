package com.sou.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sou.dao.ProductDao;
import com.sou.model.Customer;
import com.sou.model.Product;

@Service
public class ProductServiceImpl implements ProductService{

	@Autowired
	private ProductDao pdao;
	@Override
	public void add(Product p) {
		// TODO Auto-generated method stub
		pdao.save(p);
	}

	@Override
	public void modify(Product p) {
		// TODO Auto-generated method stub
		pdao.save(p);
	}

	@Override
	public void removeById(int id) {
		// TODO Auto-generated method stub
		pdao.deleteById(id);
		
	}

	@Override
	public Product getById(int id) {
		// TODO Auto-generated method stub
		Optional<Product> opt = pdao.findById(id);
		if(opt.isPresent()) {
			return opt.get();
		}
		return null;
	}

	@Override
	public List<Product> getAll() {
		// TODO Auto-generated method stub
		Iterable<Product> itr = pdao.findAll();
		List<Product> lst = new ArrayList<Product>();
		itr.forEach(ele->lst.add(ele));
		return lst;
	}

}
