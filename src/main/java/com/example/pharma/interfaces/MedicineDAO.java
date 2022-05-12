package com.example.pharma.interfaces;

import java.util.List;

import com.example.pharma.model.Medicine;

public interface MedicineDAO {
	public void save(Medicine emp);
	public List<Medicine> listAll() ;

	public Medicine get(String id) ;

	public void delete(String id);
	
	
	

}
