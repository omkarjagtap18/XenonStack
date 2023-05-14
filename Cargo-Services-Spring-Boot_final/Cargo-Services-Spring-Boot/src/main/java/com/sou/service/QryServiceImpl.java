package com.sou.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sou.dao.QryDao;
import com.sou.model.Product;
import com.sou.model.Qry;

@Service
public class QryServiceImpl implements QryService{

	@Autowired
	private QryDao qdao;
	
	@Override
	public void add(Qry q) {
		// TODO Auto-generated method stub
		qdao.save(q);
	}

	@Override
	public List<Qry> getAll() {
		// TODO Auto-generated method stub
		Iterable<Qry> itr = qdao.findAll();
		List<Qry> lst = new ArrayList<Qry>();
		itr.forEach(ele->lst.add(ele));
		return lst;
	}
}
