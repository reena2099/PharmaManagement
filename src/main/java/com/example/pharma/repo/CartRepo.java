package com.example.pharma.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import com.example.pharma.model.Cart;
;

@Repository
public interface CartRepo  extends JpaRepository<Cart,Long>  {
	
	

}
