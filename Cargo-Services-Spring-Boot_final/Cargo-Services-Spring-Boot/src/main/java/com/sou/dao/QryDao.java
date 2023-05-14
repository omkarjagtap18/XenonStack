package com.sou.dao;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;


import com.sou.model.Qry;

@Repository
public interface QryDao extends CrudRepository<Qry, Integer>{

}
