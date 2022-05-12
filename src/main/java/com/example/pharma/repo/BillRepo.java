package com.example.pharma.repo;



import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.example.pharma.model.Bill;


@Repository
public interface BillRepo extends JpaRepository<Bill,Long> {

}
