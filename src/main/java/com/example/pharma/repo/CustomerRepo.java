package com.example.pharma.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import com.example.pharma.model.Customer;

@Repository
public interface CustomerRepo  extends JpaRepository<Customer,Long>  {

	 @Query("SELECT new java.lang.Boolean(COUNT(u) > 0) FROM Customer u WHERE u.cust_username=?1")
	    Boolean getCountOfUser(String cust_username);


	 @Query("SELECT u FROM Customer u WHERE u.cust_username=:username")
	 List<Customer> getProfile(String username);
	 
	 
	  
	 
}
