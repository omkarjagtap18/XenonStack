package com.sou.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sou.model.Customer;
import com.sou.model.Product;
import com.sou.service.CustomerService;

@Controller
public class SecurityController {
	
	@Autowired
	private CustomerService cserv;
	@RequestMapping(value = {"/logincheck"},method = RequestMethod.GET)
		public String logincheck(@RequestParam(name = "email") String email,@RequestParam(name = "password") String password,HttpSession session) {
			List<Customer> lst=cserv.getAll();
			
			for(Customer c: lst)
			{
				if(c.getEmail().equals(email) && c.getPassword().equals(password))
				{
					session.setAttribute("id",c.getId());
					return "product_home";
				}
					
			}
		
		
		return "customer_login";
	
}

	@RequestMapping(value = {"/logout"},method = RequestMethod.GET)
    public String logout(HttpSession session) {
     
        session.removeAttribute("id");
        return "customer_login";
    }

	
}
