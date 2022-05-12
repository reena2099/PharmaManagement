package com.example.pharma.interfaces;

import java.util.List;

import com.example.pharma.exception.UserNotFoundException;
import com.example.pharma.model.Supplier;

public interface SupplierDAO {

	public void save(Supplier sup) ;

	public List<Supplier> listAll() ;

	public Supplier get(Long id)  ;

	public void delete(Long id) throws  UserNotFoundException;
}
