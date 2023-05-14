package com.sou.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;
	private String source;
	private String destination;
	private String trucktype;
	private String goodstype;
	private String bookingdate;
	private int uid;
	
	public Product() {
		
		// TODO Auto-generated constructor stub
	}
    public Product(int id) {
		this.id=id;
		// TODO Auto-generated constructor stub
	}
    
	public Product(String source, String destination, String trucktype, String goodstype, String bookingdate, int uid) {
		super();
		this.source = source;
		this.destination = destination;
		this.trucktype = trucktype;
		this.goodstype = goodstype;
		this.bookingdate = bookingdate;
		this.uid = uid;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getSource() {
		return source;
	}
	public void setSource(String source) {
		this.source = source;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	public String getTrucktype() {
		return trucktype;
	}
	public void setTrucktype(String trucktype) {
		this.trucktype = trucktype;
	}
	public String getGoodstype() {
		return goodstype;
	}
	public void setGoodstype(String goodstype) {
		this.goodstype = goodstype;
	}
	public String getBookingdate() {
		return bookingdate;
	}
	public void setBookingdate(String bookingdate) {
		this.bookingdate = bookingdate;
	}
	public int getUid() {
		return uid;
	}
	public void setUid(int uid) {
		this.uid = uid;
	}
	
}
