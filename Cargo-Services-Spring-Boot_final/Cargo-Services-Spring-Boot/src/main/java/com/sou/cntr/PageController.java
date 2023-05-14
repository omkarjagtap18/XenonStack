package com.sou.cntr;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sou.model.Product;

@Controller
public class PageController {

	@GetMapping("/home")
	String openHome() {
		return "product_home";
	}
	@GetMapping("/about_us")
	String openAboutUs() {
		return "aboutus";
	}
	
	@GetMapping("/registration")
	String openRegistation() {
		return "customer_reg_form";
	}
	@GetMapping("/customer_login")
	String customerLogin() {
		return "customer_login";
	}

	
}
