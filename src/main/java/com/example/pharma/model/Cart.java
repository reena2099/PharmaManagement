package com.example.pharma.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Cart {
	
	
	private long cart_id;
	private  int med_price;
	private String med_name;
	private  int quantity;
	private int total;
	
	public Cart() {
		super();
	}

	public Cart(long cart_id, int med_price, String med_name, int quantity, int total) {
		super();
		this.cart_id = cart_id;
		this.med_price = med_price;
		this.med_name = med_name;
		this.quantity = quantity;
		this.total = total;
	}

	@Id
	public long getCart_id() {
		return cart_id;
	}

	public void setCart_id(long cart_id) {
		this.cart_id = cart_id;
	}

	public int getMed_price() {
		return med_price;
	}

	public void setMed_price(int med_price) {
		this.med_price = med_price;
	}

	public String getMed_name() {
		return med_name;
	}

	public void setMed_name(String med_name) {
		this.med_name = med_name;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	@Override
	public String toString() {
		return "Cart [cart_id=" + cart_id + ", med_price=" + med_price + ", med_name=" + med_name + ", quantity="
				+ quantity + ", total=" + total + "]";
	}

	

}
