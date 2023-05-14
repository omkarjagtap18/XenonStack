package com.sou.cntr;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.sou.model.Product;
import com.sou.service.CustomerService;
import com.sou.service.OrderService;
import com.sou.service.ProductService;

@Controller
public class AdminController {
	
	@Autowired
	private CustomerService cserv;
	@Autowired
	private ProductService pserv;
	
	@Autowired
	private OrderService oserv;
	
	@GetMapping("/admin_login")
	public String adminlogin() {
		return "admin_login";
	}
	@GetMapping("/admincheck")
	public String admincheck(@RequestParam(name = "email") String email,@RequestParam(name = "password") String password,HttpSession session,ModelMap model) {
		if(email.equals("admin@buddy.com") && password.equals("admin"))
		{
			session.setAttribute("id",0);
			model.addAttribute("products",pserv.getAll());
			model.addAttribute("customers",cserv.getAll());
			model.addAttribute("orders",oserv.getAll());
			return "admin";
		}
		return "admin_login";
	}
	
	@RequestMapping(value = {"/admin_delete_customer"},method = RequestMethod.GET)
	public String CustomerDelete(@RequestParam(name = "id") int id,ModelMap model,HttpSession session) {
		//System.out.println("second delete");
		if(session.getAttribute("id")!=null && ((Integer) session.getAttribute("id")).intValue()==0)
			
		{
		cserv.removeById(id);
		model.addAttribute("products",pserv.getAll());
		model.addAttribute("customers",cserv.getAll());
		model.addAttribute("orders",oserv.getAll());
		return "admin";
		}
		return "admin_login";
	}
	
	@GetMapping("/adminproduct")
	public String viewadminProducts(Model model,HttpSession session) {
		if(session.getAttribute("id")!=null && ((Integer) session.getAttribute("id")).intValue()==0)
		{
			model.addAttribute("products",pserv.getAll());
			model.addAttribute("customers",cserv.getAll());
			model.addAttribute("orders",oserv.getAll());
			return "admin";
		}
		return "admin_login";
	}
	@RequestMapping(value = {"/admin_delete_product"},method = RequestMethod.GET)
	public String admindeleteproduct(@RequestParam(name = "id") int id, ModelMap model,HttpSession session) {
		if(session.getAttribute("id")!=null && ((Integer) session.getAttribute("id")).intValue()==0)
		
		{
		pserv.removeById(id);
		model.addAttribute("products",pserv.getAll());
		model.addAttribute("customers",cserv.getAll());
		model.addAttribute("orders",oserv.getAll());
		return "admin";
		}
		return "admin_login";
		
	}
}
