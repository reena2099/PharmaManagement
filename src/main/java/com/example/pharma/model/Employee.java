package com.example.pharma.model;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Employee {
	
	private long emp_id ; 
	private String emp_name  ;
	private int emp_age;
	private long emp_phone ; 
	private String emp_email  ;
	private String emp_gender  ;
	private String emp_address ; 
	private String emp_username ;
	private String emp_password;
	
	public Employee() {
		super();
	}

	
	public Employee(long emp_id, String emp_name, int emp_age, long emp_phone, String emp_email, String emp_gender,
			String emp_address, String emp_username, String emp_password) {
		super();
		this.emp_id = emp_id;
		this.emp_name = emp_name;
		this.emp_age = emp_age;
		this.emp_phone = emp_phone;
		this.emp_email = emp_email;
		this.emp_gender = emp_gender;
		this.emp_address = emp_address;
		this.emp_username = emp_username;
		this.emp_password = emp_password;
	}

	@Id
	public long getEmp_id() {
		return emp_id;
	}


	public void setEmp_id(long emp_id) {
		this.emp_id = emp_id;
	}


	public String getEmp_name() {
		return emp_name;
	}


	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}


	public int getEmp_age() {
		return emp_age;
	}


	public void setEmp_age(int emp_age) {
		this.emp_age = emp_age;
	}


	public long getEmp_phone() {
		return emp_phone;
	}


	public void setEmp_phone(long emp_phone) {
		this.emp_phone = emp_phone;
	}


	public String getEmp_email() {
		return emp_email;
	}


	public void setEmp_email(String emp_email) {
		this.emp_email = emp_email;
	}


	public String getEmp_gender() {
		return emp_gender;
	}


	public void setEmp_gender(String emp_gender) {
		this.emp_gender = emp_gender;
	}


	public String getEmp_address() {
		return emp_address;
	}


	public void setEmp_address(String emp_address) {
		this.emp_address = emp_address;
	}


	public String getEmp_username() {
		return emp_username;
	}


	public void setEmp_username(String emp_username) {
		this.emp_username = emp_username;
	}


	public String getEmp_password() {
		return emp_password;
	}


	public void setEmp_password(String emp_password) {
		this.emp_password = emp_password;
	}


	@Override
	public String toString() {
		return "Employee [emp_id=" + emp_id + ", emp_name=" + emp_name + ", emp_age=" + emp_age + ", emp_phone="
				+ emp_phone + ", emp_email=" + emp_email + ", emp_gender=" + emp_gender + ", emp_address=" + emp_address
				+ ", emp_username=" + emp_username + ", emp_password=" + emp_password + "]";
	}
	
	

}
