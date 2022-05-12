package com.example.pharma.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.pharma.dao.BillDAO;
import com.example.pharma.model.Bill;
import com.example.pharma.model.Customer;
import com.example.pharma.repo.BillRepo;
import com.example.pharma.repo.CustomerRepo;


@Service
@Transactional

public class BillDAOImpl implements BillDAO{
	
	@Autowired
	private BillRepo billRepo;

	@Override
	public void save(Bill cus) {
		billRepo.save(cus);
		
	}

	@Override
	public List<Bill> listAll() {
		return (List<Bill>) billRepo.findAll();
		
	}

	@Override
	public Bill get(Long id) {
		return billRepo.findById(id).get();
	}

	@Override
	public void delete(Long id) {
		billRepo.deleteById(id);
		
	}

}
