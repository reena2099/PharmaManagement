package com.example.pharma.interfaces;

import java.util.List;

import com.example.pharma.model.Employee;

public interface EmployeeDAO {
	public void save(Employee emp) ;

	public List<Employee> listAll() ;

	public Employee get(Long id) ;

	public void delete(Long id) ;
}
