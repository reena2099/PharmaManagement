package com.example.pharma.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Customer {
	
	private long cust_id ; 
	private String cust_name  ;
	private int cust_age;
	private long cust_phone ; 
	private String cust_email  ;
	private String cust_gender  ;
	private String cust_address ; 
	private String cust_username ;
	private String cust_password;
	
	public Customer() {
		super();
	}
	
	public Customer(long cust_id, String cust_name, int cust_age, long cust_phone, String cust_email,
			String cust_gender, String cust_address, String cust_username, String cust_password) {
		super();
		this.cust_id = cust_id;
		this.cust_name = cust_name;
		this.cust_age = cust_age;
		this.cust_phone = cust_phone;
		this.cust_email = cust_email;
		this.cust_gender = cust_gender;
		this.cust_address = cust_address;
		this.cust_username = cust_username;
		this.cust_password = cust_password;
	}


@Id
	public long getCust_id() {
		return cust_id;
	}



	public void setCust_id(long cust_id) {
		this.cust_id = cust_id;
	}



	public String getCust_name() {
		return cust_name;
	}



	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}



	public int getCust_age() {
		return cust_age;
	}



	public void setCust_age(int cust_age) {
		this.cust_age = cust_age;
	}



	public long getCust_phone() {
		return cust_phone;
	}



	public void setCust_phone(long cust_phone) {
		this.cust_phone = cust_phone;
	}



	public String getCust_email() {
		return cust_email;
	}



	public void setCust_email(String cust_email) {
		this.cust_email = cust_email;
	}



	public String getCust_gender() {
		return cust_gender;
	}



	public void setCust_gender(String cust_gender) {
		this.cust_gender = cust_gender;
	}



	public String getCust_address() {
		return cust_address;
	}



	public void setCust_address(String cust_address) {
		this.cust_address = cust_address;
	}



	public String getCust_username() {
		return cust_username;
	}



	public void setCust_username(String cust_username) {
		this.cust_username = cust_username;
	}



	public String getCust_password() {
		return cust_password;
	}



	public void setCust_password(String cust_password) {
		this.cust_password = cust_password;
	}



	@Override
	public String toString() {
		return "Customer [cust_id=" + cust_id + ", cust_name=" + cust_name + ", cust_age=" + cust_age + ", cust_phone="
				+ cust_phone + ", cust_email=" + cust_email + ", cust_gender=" + cust_gender + ", cust_address="
				+ cust_address + ", cust_username=" + cust_username + ", cust_password=" + cust_password + "]";
	}

	
	
}
