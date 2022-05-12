package com.example.pharma.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.example.pharma.exception.UserNotFoundException;
import com.example.pharma.interfaces.CustomerDAO;
import com.example.pharma.interfaces.SupplierDAO;

import com.example.pharma.model.Supplier;
import com.example.pharma.repo.SupplierRepo;


@Service
@Transactional

public class SupplierDAOImpl  implements SupplierDAO {
	
	@Autowired
	private SupplierRepo supRepo;
	
	
	public void save(Supplier sup) {
		supRepo.save(sup);
	}

	public List<Supplier> listAll() {
		return (List<Supplier>) supRepo.findAll();
	}

	public Supplier get(Long id)  
	{
		return supRepo.findById(id).get();
	}

	public void delete(Long id) throws  UserNotFoundException
	{

		if(id==0)
		{
			throw new UserNotFoundException ("Supplier not found");
		}
		else
			supRepo.deleteById(id);
	}
		
	}
	
	
	
	

	



