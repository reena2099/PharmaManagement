package com.example.pharma.interfaces;

import java.util.List;

import com.example.pharma.model.Record;



public interface RecordDAO {
	
	
	public void save(Record cus) ;

	public List<Record> listAll() ;

	public Record get(Long id) ;

	public void delete(Long id);

}
