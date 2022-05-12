package com.example.pharma.daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;
import java.util.Scanner;

import javax.sql.DataSource;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.example.pharma.dao.CustomerDAO;
import com.example.pharma.dao.EmployeeDAO;
import com.example.pharma.model.Contact;
import com.example.pharma.model.Customer;
import com.example.pharma.model.Employee;
import com.example.pharma.repo.CustomerRepo;
import com.example.pharma.repo.EmployeeRepo;


@Service
@Transactional

public class EmployeeDAOImpl implements EmployeeDAO  {
	
	@Autowired
	private EmployeeRepo empRepo;
	
	
	public void save(Employee emp) {
		empRepo.save(emp);
	}

	public List<Employee> listAll() {
		return (List<Employee>) empRepo.findAll();
	}

	public Employee get(Long id) {
		return empRepo.findById(id).get();
	}

	public void delete(Long id) {
		empRepo.deleteById(id);
	}
	
	public boolean search(String uname) {
		return empRepo.getCountOfUser(uname);
		}
	
	

	
}