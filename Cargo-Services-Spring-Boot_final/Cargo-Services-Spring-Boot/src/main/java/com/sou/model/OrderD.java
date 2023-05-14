package com.sou.model;

import javax.annotation.Generated;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class OrderD {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private int oid;	
	private int pid;
	private int cid;
	private String goodstype;
	private String fname;
	private int price;
	public OrderD() {
		super();
	}
	public OrderD(int oid) {
		super();
		this.oid = oid;
	}
	public OrderD(int pid, int cid, String goodstype, String fname, int price) {
		super();
		this.pid = pid;
		this.cid = cid;
		this.goodstype = goodstype;
		this.fname = fname;
		this.price = price;
	}
	public OrderD(int oid, int pid, int cid, String goodstype, String fname, int price) {
		super();
		this.oid = oid;
		this.pid = pid;
		this.cid = cid;
		this.goodstype = goodstype;
		this.fname = fname;
		this.price = price;
	}
	public int getOid() {
		return oid;
	}
	public void setOid(int oid) {
		this.oid = oid;
	}
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	public int getCid() {
		return cid;
	}
	public void setCid(int cid) {
		this.cid = cid;
	}
	public String getGoodstype() {
		return goodstype;
	}
	public void setGoodstype(String goodstype) {
		this.goodstype = goodstype;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	
	@Override
	public String toString() {
		return "Order [oid=" + oid + ", pid=" + pid + ", cid=" + cid + ", goodstype=" + goodstype + ", fname=" + fname
				+ ", price=" + price + "]";
	}
	

}
