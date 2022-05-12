package com.example.pharma.dao;

import java.util.List;

import com.example.pharma.model.Bill;



public interface BillDAO {
	public void save(Bill cus) ;

	public List<Bill> listAll() ;

	public Bill get(Long id) ;

	public void delete(Long id);

}
