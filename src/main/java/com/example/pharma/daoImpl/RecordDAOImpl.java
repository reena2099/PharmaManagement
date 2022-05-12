package com.example.pharma.daoImpl;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.pharma.dao.RecordDAO;
import com.example.pharma.model.Cart;
import com.example.pharma.model.Record;
import com.example.pharma.repo.RecordRepo;

@Service
@Transactional

public class RecordDAOImpl implements RecordDAO {
	
	@Autowired
	private RecordRepo recRepo;

	@Override
	public void save(Record cus) {
		recRepo.save(cus);
		
	}

	@Override
	public List<Record> listAll() {
		
		return  (List<Record>) recRepo.findAll();
	}

	@Override
	public Record get(Long id) {
		return recRepo.findById(id).get();
	}

	@Override
	public void delete(Long id) {
		recRepo.deleteById(id);
		
	}

}
