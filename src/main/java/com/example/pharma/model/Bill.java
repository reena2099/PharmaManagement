package com.example.pharma.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Bill {
	
	private long bill_id;
	private int cust_id;
	private Date bill_date;
	private int total;
	public Bill(long bill_id, int cust_id, Date bill_date, int total) {
		super();
		this.bill_id = bill_id;
		this.cust_id = cust_id;
		this.bill_date = bill_date;
		this.total = total;
	}
	public Bill() {
		super();
	}
	@Id
	public long getBill_id() {
		return bill_id;
	}
	public void setBill_id(long bill_id) {
		this.bill_id = bill_id;
	}
	public int getCust_id() {
		return cust_id;
	}
	public void setCust_id(int cust_id) {
		this.cust_id = cust_id;
	}
	public Date getBill_date() {
		return bill_date;
	}
	public void setBill_date(Date bill_date) {
		this.bill_date = bill_date;
	}
	public int getTotal() {
		return total;
	}
	public void setTotal(int total) {
		this.total = total;
	}
	@Override
	public String toString() {
		return "Bill [bill_id=" + bill_id + ", cust_id=" + cust_id + ", bill_date=" + bill_date + ", total=" + total
				+ "]";
	}
	
	

}
