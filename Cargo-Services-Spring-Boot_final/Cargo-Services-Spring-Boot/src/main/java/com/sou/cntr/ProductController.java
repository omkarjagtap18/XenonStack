package com.sou.cntr;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.sou.model.OrderD;
import com.sou.model.Product;
import com.sou.service.CustomerService;
import com.sou.service.OrderService;
import com.sou.service.ProductService;

@Controller
public class ProductController {

	@Autowired
	private ProductService pserv;
	
	@Autowired
	private CustomerService cserv;
	@Autowired
	private OrderService oserv;
	
	@PostMapping(path = "/product_add_form")
	String productAddForm(@RequestBody Product product,Model model,HttpSession session) {

		if(session.getAttribute("id")!=null) {
			pserv.add(product);
			List<Product> lst1= pserv.getAll();
			List<Product> lst2=new ArrayList<>();
			for(Product p : lst1)
			{
				if(p.getUid()==(Integer)(session.getAttribute("id")))
				{
					lst2.add(p);
				}
			}
			model.addAttribute("products",lst2);
		return "add_product";
		}
		return "customer_login";
	
	}
	
	@RequestMapping("/addproduct") 
	public String addproduct(Model model,HttpSession session) { 
		if(session.getAttribute("id")!=null) {
			List<Product> lst1= pserv.getAll();
			List<Product> lst2=new ArrayList<>();
			List<Product> lst3=new ArrayList<>();
			for(Product p : lst1)
			{
				if(p.getUid()==(Integer)(session.getAttribute("id")))
				{
					lst2.add(p);
				}
			}
			List<Integer> lst4=new ArrayList<>();
			for(OrderD o: oserv.getAll())
			{
				lst4.add(o.getPid());
			}
			for(Product p : lst2)
			{
				if(!lst4.contains(p.getId()))
				{
					lst3.add(p);
				}
			}
		model.addAttribute("products",lst3);
	    return "add_product"; 
		}
		return "customer_login";
	}

	@PostMapping(value = {"/productupdate"})
	public String productUpdate(@ModelAttribute("product") Product product,ModelMap model,HttpSession session) {
		if(session.getAttribute("id")!=null) {
		pserv.modify(product);
		List<Product> lst1= pserv.getAll();
		List<Product> lst2=new ArrayList<>();
		List<Product> lst3=new ArrayList<>();
		for(Product p : lst1)
		{
			if(p.getUid()==(Integer)(session.getAttribute("id")))
			{
				lst2.add(p);
			}
		}
		List<Integer> lst4=new ArrayList<>();
		for(OrderD o: oserv.getAll())
		{
			lst4.add(o.getPid());
		}
		for(Product p : lst2)
		{
			if(!lst4.contains(p.getId()))
			{
				lst3.add(p);
			}
		}
	model.addAttribute("products",lst3);
		return "add_product";
		}
		return "customer_login";
	}
		@RequestMapping(value = {"/product_update_form"},method = RequestMethod.GET)
	public String productupdateform(@RequestParam(name = "id") int id,ModelMap model,HttpSession session) {
			if(session.getAttribute("id")!=null) {
			Product p=new Product();
			p=pserv.getById(id);
		model.put("product",p);
		return "product_update_form";
			}
			return "customer_login";
	}


	@RequestMapping(value = {"/deleteproduct"},method = RequestMethod.GET)
	public String productDelete(@RequestParam(name = "id") int id, ModelMap model, HttpSession session) {
		if(session.getAttribute("id")!=null) {
		pserv.removeById(id);
		List<Product> lst1= pserv.getAll();
		List<Product> lst2=new ArrayList<>();
		List<Product> lst3=new ArrayList<>();
		for(Product p : lst1)
		{
			if(p.getUid()==(Integer)(session.getAttribute("id")))
			{
				lst2.add(p);
			}
		}
		List<Integer> lst4=new ArrayList<>();
		for(OrderD o: oserv.getAll())
		{
			lst4.add(o.getPid());
		}
		for(Product p : lst2)
		{
			if(!lst4.contains(p.getId()))
			{
				lst3.add(p);
			}
		}
	model.addAttribute("products",lst3);
		return "add_product";
		}
		return "customer_login";
		
	}
	
	
	@GetMapping("/orders")
	public String viewProducts(Model model ,HttpSession session) {
		if(session.getAttribute("id")!=null) {
			List<OrderD> lst1= oserv.getAll();
			List<OrderD> lst2=new ArrayList<>();
			for(OrderD od : lst1)
			{
				if(od.getCid()==(Integer)(session.getAttribute("id")))
				{
					lst2.add(od);
				}
			}
		model.addAttribute("orders",lst2);
	    return "product_orders";
		}
		return "customer_login";
	}
	@PostMapping("/searchbyprice")
//	public String searchbyprice(@RequestBody RequestBody ,Model model ,HttpSession session) {
//		if(session.getAttribute("id")!=null) {
//			List<OrderD> lst1= oserv.getAll();
//			List<OrderD> lst2=new ArrayList<>();
//			for(OrderD od : lst1)
//			{
//				if(od.getCid()==(Integer)(session.getAttribute("id")))
//				{
//					lst2.add(od);
//				}
//			}
//		model.addAttribute("orders",lst2);
//	    return "product_orders";
//		}
//		return "customer_login";
//	}
	
	@GetMapping(value = {"/product_update_form/{id}"})
	public String productGet(@PathVariable int id,Model model, HttpSession session) {
			if(session.getAttribute("id")!=null) {
			model.addAttribute("product",pserv.getById(id));
			
		return "product_update_form";
			}
			return "customer_login";
		
	}
	@GetMapping("/searchbyprice")
	public String searchbyprice(@RequestParam(name = "searchbyorder") String title,Model model,HttpSession session) {
		if(session.getAttribute("id")!=null) {
			List<OrderD> lst1= oserv.getAll();
			List<OrderD> lst2=new ArrayList<>();
			for(OrderD od : lst1)
			{
				if(od.getCid()==(Integer)(session.getAttribute("id")))
				{
					if(title.equals("2") && od.getPrice()>5000 )
					      lst2.add(od);
					if(title.equals("3") && od.getPrice()<=5000 )
					      lst2.add(od);
					if(title.equals("1"))
					      lst2.add(od);
				    
				}
			}
		model.addAttribute("orders",lst2);
			return "product_orders";
		}
		return "cutomer-login";
	}

}
