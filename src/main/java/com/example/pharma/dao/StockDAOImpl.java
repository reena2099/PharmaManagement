package com.example.pharma.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.pharma.interfaces.StockDAO;
import com.example.pharma.model.Stock;

import com.example.pharma.repo.StockRepo;


@Service
@Transactional

public class StockDAOImpl implements StockDAO {
	
	@Autowired
	private StockRepo stockRepo;

	@Override
	public void save(Stock cus) {
		stockRepo.save(cus);
		
	}

	@Override
	public List<Stock> listAll() {
		
		return (List<Stock>) stockRepo.findAll();
	}

	@Override
	public Stock get(Long id) {
		return stockRepo.findById(id).get();
	}

	@Override
	public void delete(Long id) {
		stockRepo.deleteById(id);
		
	}

}
