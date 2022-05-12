package com.example.pharma.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.Optional;

import javax.sql.DataSource;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;


import com.example.pharma.exception.UserNotFoundException;
import com.example.pharma.interfaces.CustomerDAO;
import com.example.pharma.model.Customer;
import com.example.pharma.model.Employee;
import com.example.pharma.repo.CustomerRepo;


@Service
@Transactional

public class CustomerDAOImpl implements CustomerDAO  {
	
	@Autowired
	private CustomerRepo custRepo;
	
	
	public void save(Customer cus) 
	{
		custRepo.save(cus);
	}

	public List<Customer> listAll() 
	{
		return (List<Customer>) custRepo.findAll();
	}

	public Customer get(long id) {
		return custRepo.findById(id).get();
	}

	public void delete(long id)
	{
		custRepo.deleteById(id);
	}
	

	
	public boolean search(String uname) {
		return custRepo.getCountOfUser( uname);
		}

	
	

	@Override
	public List<Customer> getProfile(String cust_username) 
	{
		return  (List<Customer>) custRepo.getProfile(cust_username);
	}

	
	
	public Customer getStudent(long id ) {
		Optional<Customer> studentResponse =  custRepo.findById(id);
		Customer student = studentResponse.get();
		return student;
	}

	

	
	
	 
	
	
	
	

	
}

	

	
		
	


