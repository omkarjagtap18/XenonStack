package com.sou.cntr;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RestController;

import com.sou.model.Customer;
import com.sou.model.Product;
import com.sou.service.CustomerService;
import com.sou.service.ProductService;

@RestController
public class CustomerController {

	@Autowired
	private CustomerService cserv;
	@Autowired
	private ProductService pserv;
	@PostMapping(value = {"/customer_add_form"})
	public String CustomerAddForm(@RequestBody Customer c) {
		cserv.add(c);
		return "customer_reg_form";
	}
	
	
	
	@PutMapping(value = {"/customer_update_form.htm"})
	public String CustomerUpdate(@RequestBody Customer c) {
		cserv.modify(c);
		return "success";
	}
	
	/*
	 * @DeleteMapping(value = {"/product_delete.htm"}) public String
	 * productDelete(@RequestParam int id) { //System.out.println("first delete");
	 * pserv.removeById(id); return "success"; }
	 */
	

	
	@GetMapping(value = {"/customer_getAll.htm"})
	public List<Customer> CustomerList(){
		return cserv.getAll();
	}
}
