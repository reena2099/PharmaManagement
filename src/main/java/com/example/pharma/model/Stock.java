package com.example.pharma.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Stock {
	
	private long stock_id ;
	private String stock_name; 
	private long sup_id;
	private int quantity;
	private long med_id ;
	
	public Stock() {
		super();
	}

	

	public Stock(long stock_id, String stock_name, long sup_id, int quantity, long med_id) {
		super();
		this.stock_id = stock_id;
		this.stock_name = stock_name;
		this.sup_id = sup_id;
		this.quantity = quantity;
		this.med_id = med_id;
	}


   @Id
	public long getStock_id() {
		return stock_id;
	}



	public void setStock_id(long stock_id) {
		this.stock_id = stock_id;
	}



	public String getStock_name() {
		return stock_name;
	}



	public void setStock_name(String stock_name) {
		this.stock_name = stock_name;
	}



	public long getSup_id() {
		return sup_id;
	}



	public void setSup_id(long sup_id) {
		this.sup_id = sup_id;
	}



	public int getQuantity() {
		return quantity;
	}



	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}



	public long getMed_id() {
		return med_id;
	}



	public void setMed_id(long med_id) {
		this.med_id = med_id;
	}



	@Override
	public String toString() {
		return "Stock [stock_id=" + stock_id + ", stock_name=" + stock_name + ", sup_id=" + sup_id + ", quantity="
				+ quantity + ", med_id=" + med_id + "]";
	}
	
	

}
