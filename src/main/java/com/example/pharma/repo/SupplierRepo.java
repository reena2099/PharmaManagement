package com.example.pharma.repo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import com.example.pharma.model.Supplier;

@Repository
public interface SupplierRepo extends JpaRepository<Supplier,Long> {

		
	

}

