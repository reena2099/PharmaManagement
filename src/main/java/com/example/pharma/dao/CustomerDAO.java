package com.example.pharma.dao;

import java.util.List;

import com.example.pharma.exception.UserNotFoundException;
import com.example.pharma.model.Customer;
import com.example.pharma.model.Employee;

public interface CustomerDAO {

	public void save(Customer cus) ;

	public List<Customer> listAll() ;

	public Customer get(long id) ;

	public void delete(long id);
   
	 public List<Customer> getProfile(String cust_username);
	
	

}
