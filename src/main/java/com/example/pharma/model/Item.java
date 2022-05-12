package com.example.pharma.model;

public class Item {
	
	
	private Medicine medicine;
	private int quantity;
	
	
	public Item(Medicine medicine, int quantity) {
		super();
		this.medicine = medicine;
		this.quantity = quantity;
	}


	public Item() {
		super();
	}


	public Medicine getMedicine() {
		return medicine;
	}


	public void setMedicine(Medicine medicine) {
		this.medicine = medicine;
	}


	public int getQuantity() {
		return quantity;
	}


	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	@Override
	public String toString() {
		return "Item [medicine=" + medicine + ", quantity=" + quantity + "]";
	}
	
	

}
