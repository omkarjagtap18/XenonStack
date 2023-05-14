package com.sou.service;

import java.util.List;

import com.sou.model.Qry;

public interface QryService {

	void add(Qry q);
	List<Qry> getAll();
}
