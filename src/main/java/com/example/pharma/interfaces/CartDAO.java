package com.example.pharma.interfaces;

import java.util.List;

import com.example.pharma.model.Cart;



public interface CartDAO {
	
	public void save(Cart cus) ;

	public List<Cart> listAll() ;

	public Cart get(Long id) ;

	public void delete(Long id);

	public void saveandflush(Cart cus);

	public void deleteall();

}
