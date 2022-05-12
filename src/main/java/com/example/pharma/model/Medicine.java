package com.example.pharma.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Medicine {
	
	private String med_id ;
	private String med_name; 
	private long med_price;
	private float med_dose;
	private String med_desc;
	private String med_mfg_date;
	private String med_exp_date ; 
	private long stock_id;
	private String med_image;
	
	public Medicine() {
		super();
	}

	public Medicine(String med_id, String med_name, long med_price, float med_dose, String med_desc,
			String med_mfg_date, String med_exp_date, long stock_id, String med_image) {
		super();
		this.med_id = med_id;
		this.med_name = med_name;
		this.med_price = med_price;
		this.med_dose = med_dose;
		this.med_desc = med_desc;
		this.med_mfg_date = med_mfg_date;
		this.med_exp_date = med_exp_date;
		this.stock_id = stock_id;
		this.med_image = med_image;
	}
	
    @Id
	public String getMed_id() {
		return med_id;
	}

	public void setMed_id(String med_id) {
		this.med_id = med_id;
	}

	public String getMed_name() {
		return med_name;
	}

	public void setMed_name(String med_name) {
		this.med_name = med_name;
	}

	public long getMed_price() {
		return med_price;
	}

	public void setMed_price(long med_price) {
		this.med_price = med_price;
	}

	public float getMed_dose() {
		return med_dose;
	}

	public void setMed_dose(float med_dose) {
		this.med_dose = med_dose;
	}

	public String getMed_desc() {
		return med_desc;
	}

	public void setMed_desc(String med_desc) {
		this.med_desc = med_desc;
	}

	public String getMed_mfg_date() {
		return med_mfg_date;
	}

	public void setMed_mfg_date(String med_mfg_date) {
		this.med_mfg_date = med_mfg_date;
	}

	public String getMed_exp_date() {
		return med_exp_date;
	}

	public void setMed_exp_date(String med_exp_date) {
		this.med_exp_date = med_exp_date;
	}

	public long getStock_id() {
		return stock_id;
	}

	public void setStock_id(long stock_id) {
		this.stock_id = stock_id;
	}

	public String getMed_image() {
		return med_image;
	}

	public void setMed_image(String med_image) {
		this.med_image = med_image;
	}

	@Override
	public String toString() {
		return "Medicine [med_id=" + med_id + ", med_name=" + med_name + ", med_price=" + med_price + ", med_dose="
				+ med_dose + ", med_desc=" + med_desc + ", med_mfg_date=" + med_mfg_date + ", med_exp_date="
				+ med_exp_date + ", stock_id=" + stock_id + ", med_image=" + med_image + "]";
	}

	
	
	
	
	

	
	

}
