package com.sou.cntr;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.sou.model.OrderD;
import com.sou.model.Product;
import com.sou.service.CustomerService;
import com.sou.service.OrderService;
import com.sou.service.ProductService;

@Controller
public class OrderController {
	
	@Autowired
	private OrderService oserv;
	@Autowired
	private ProductService pserv;
	@Autowired
	private CustomerService cserv;
	
	
	
	@RequestMapping(value= {"/paynow"},method = RequestMethod.GET)
	public String paynow(@RequestParam(name = "id") int id,ModelMap model,HttpSession session)
	{
		if(session.getAttribute("id")!=null)
		{
			OrderD o=new OrderD();
			int oid;
			if(oserv.getAll().size()>0) {
			oid=oserv.getAll().get(oserv.getAll().size()-1).getOid()+1;}
			else {
				oid=1;
			}
			o.setOid(oid);
			o.setPid(id);
			o.setCid((int)session.getAttribute("id"));
			o.setFname(cserv.getById((int)session.getAttribute("id")).getFname());
			o.setGoodstype(pserv.getById(id).getGoodstype());
			o.setPrice((int)(Math.random()*8000)+2000);
			
			model.put("orderd", o);
			
			
			
			return "payment_portal";

		}
		return "customer_login";
	}
	
	@PostMapping(value = {"/update_order"})
	public String productUpdate(@ModelAttribute("orderd") OrderD o,Model model,HttpSession session) {
		if(session.getAttribute("id")!=null) {
			oserv.add(o);
			
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
	
}
