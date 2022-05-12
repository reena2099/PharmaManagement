package com.example.pharma.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.pharma.model.Employee;

@Repository
public interface EmployeeRepo extends JpaRepository<Employee,Long>  {


	 @Query("SELECT new java.lang.Boolean(COUNT(u) > 0) FROM Employee u WHERE u.emp_username=?1")
	    Boolean getCountOfUser(String emp_username);
}
