package com.example.pharma.daoImpl;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.time.LocalDate;
import java.util.List;
import java.util.Scanner;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.pharma.dao.CartDAO;
import com.example.pharma.model.Bill;
import com.example.pharma.model.Cart;
import com.example.pharma.repo.CartRepo;

@Service
@Transactional

public class CartDAOImpl implements CartDAO {
	
	@Autowired
	private CartRepo cartRepo;
	


	@Override
	public void save(Cart cus) {
	cartRepo.save(cus);
	}
	
	@Override
	public void saveandflush(Cart cus) {
	cartRepo.saveAndFlush(cus);
	}

	@Override
	public List<Cart> listAll() {
		return (List<Cart>) cartRepo.findAll();
	}
	

	@Override
	public Cart get(Long id) {
		return cartRepo.findById(id).get();
	}

	@Override
	public void delete(Long id) {
		cartRepo.deleteById(id);
		
		
	}
	
	
	@Override
	public void deleteall() {
		cartRepo.deleteAll();
		
	}
	
	
}


