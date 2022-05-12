package com.example.pharma.interfaces;

import java.util.List;

import com.example.pharma.model.Stock;



public interface StockDAO {
	
	public void save(Stock cus) ;

	public List<Stock> listAll() ;

	public Stock get(Long id) ;

	public void delete(Long id);

}
