package com.example.pharma.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Record {
	
	private long record_id;
	private long cust_id;
	private Date re_date;
	private int total_bill; 
	private String bill_details;
	
	public Record() {
		super();
	}

	

	public Record(long record_id, long cust_id, Date re_date, int total_bill, String bill_details) {
		super();
		this.record_id = record_id;
		this.cust_id = cust_id;
		this.re_date = re_date;
		this.total_bill = total_bill;
		this.bill_details = bill_details;
	}


@Id
	public long getRecord_id() {
		return record_id;
	}



	public void setRecord_id(long record_id) {
		this.record_id = record_id;
	}



	public long getCust_id() {
		return cust_id;
	}



	public void setCust_id(long cust_id) {
		this.cust_id = cust_id;
	}



	public Date getRe_date() {
		return re_date;
	}



	public void setRe_date(Date re_date) {
		this.re_date = re_date;
	}



	public int getTotal_bill() {
		return total_bill;
	}



	public void setTotal_bill(int total_bill) {
		this.total_bill = total_bill;
	}



	public String getBill_details() {
		return bill_details;
	}



	public void setBill_details(String bill_details) {
		this.bill_details = bill_details;
	}



	@Override
	public String toString() {
		return "Record [record_id=" + record_id + ", cust_id=" + cust_id + ", re_date=" + re_date + ", total_bill="
				+ total_bill + ", bill_details=" + bill_details + "]";
	}
	
	

}
