package com.example.pharma.repo;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.pharma.model.Medicine;


@Repository
public interface MedicineRepo  extends JpaRepository<Medicine,String> {
	
	

}
