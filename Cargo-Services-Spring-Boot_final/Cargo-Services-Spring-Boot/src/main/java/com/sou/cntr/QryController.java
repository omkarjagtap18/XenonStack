package com.sou.cntr;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.sou.model.Product;
import com.sou.model.Qry;
import com.sou.service.QryService;

@Controller
public class QryController {
	
	@Autowired
	private QryService qserv;
 
	@GetMapping(value={"/qry_add_form"})
	public String addproduct() {
		
		return "contactus";
	}
	
	
	@PostMapping(path = "/addqry")
	public String qryAddForm(@RequestBody Qry qry) {
		qserv.add(qry);
		System.out.print("123");
		return "contactus";
	}
}
