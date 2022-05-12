package com.example.pharma.daoImpl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.ResultSetExtractor;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Service;

import com.example.pharma.dao.CustomerDAO;
import com.example.pharma.dao.MedicineDAO;
import com.example.pharma.model.Medicine;

import com.example.pharma.repo.MedicineRepo;


	@Service
	@Transactional

	public class MedicineDAOImpl implements MedicineDAO  {
		
		@Autowired
		private MedicineRepo medRepo;
		
		private List<Medicine> medicines;
		
		public MedicineDAOImpl()
		{
			this.medicines=new ArrayList<Medicine>();
		}
		
		
		public void save(Medicine emp) {
			medRepo.save(emp);
		}

		public List<Medicine> listAll() {
			return (List<Medicine>) medRepo.findAll();
		}

		public Medicine get(String id) {
			return medRepo.findById(id).get();
		}

		public void delete(String id) {
			medRepo.deleteById(id);
		}
		public List<Medicine> findAll() {
			return this.medicines;
		}
		
		public Medicine find(String id) {
			for (Medicine medicine : this.medicines) 
			{
				
				if (medicine.getMed_id().equalsIgnoreCase(id)) 
				{
					return medicine;
				}
			}
			return null;
		}
		
		
		
		

		
	}


