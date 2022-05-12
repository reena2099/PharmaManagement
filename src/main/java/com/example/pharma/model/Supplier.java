package com.example.pharma.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Supplier {

	
	private long sup_id;
	private String sup_name;
	private String sup_company;
	 private String sup_address;
	 private String drug_details;
	private long sup_phone;
	private String sup_email;
	
	public Supplier() {
		super();
	}

	
	public Supplier(long sup_id, String sup_name, String sup_company, String sup_address, String drug_details,
			long sup_phone, String sup_email) {
		super();
		this.sup_id = sup_id;
		this.sup_name = sup_name;
		this.sup_company = sup_company;
		this.sup_address = sup_address;
		this.drug_details = drug_details;
		this.sup_phone = sup_phone;
		this.sup_email = sup_email;
	}

	
    @Id
	public long getSup_id() {
		return sup_id;
	}


	public void setSup_id(long sup_id) {
		this.sup_id = sup_id;
	}


	public String getSup_name() {
		return sup_name;
	}


	public void setSup_name(String sup_name) {
		this.sup_name = sup_name;
	}


	public String getSup_company() {
		return sup_company;
	}


	public void setSup_company(String sup_company) {
		this.sup_company = sup_company;
	}


	public String getSup_address() {
		return sup_address;
	}


	public void setSup_address(String sup_address) {
		this.sup_address = sup_address;
	}


	public String getDrug_details() {
		return drug_details;
	}


	public void setDrug_details(String drug_details) {
		this.drug_details = drug_details;
	}


	public long getSup_phone() {
		return sup_phone;
	}


	public void setSup_phone(long sup_phone) {
		this.sup_phone = sup_phone;
	}


	public String getSup_email() {
		return sup_email;
	}


	public void setSup_email(String sup_email) {
		this.sup_email = sup_email;
	}


	@Override
	public String toString() {
		return "Supplier [sup_id=" + sup_id + ", sup_name=" + sup_name + ", sup_company=" + sup_company
				+ ", sup_address=" + sup_address + ", drug_details=" + drug_details + ", sup_phone=" + sup_phone
				+ ", sup_email=" + sup_email + "]";
	}
	
	
	
}
