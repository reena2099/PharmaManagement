package com.example.pharma.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.example.pharma.daoImpl.CartDAOImpl;
import com.example.pharma.daoImpl.CustomerDAOImpl;
import com.example.pharma.daoImpl.EmployeeDAOImpl;
import com.example.pharma.daoImpl.MedicineDAOImpl;
import com.example.pharma.daoImpl.StockDAOImpl;
import com.example.pharma.daoImpl.SupplierDAOImpl;
import com.example.pharma.exception.UserNotFoundException;
import com.example.pharma.model.Cart;
import com.example.pharma.model.Contact;
import com.example.pharma.model.Customer;
import com.example.pharma.model.Employee;
import com.example.pharma.model.Item;
import com.example.pharma.model.Medicine;
import com.example.pharma.model.Stock;
import com.example.pharma.model.Supplier;


//This is a dispatcher


/**
 * This controller routes accesses to the application to the appropriate
 * hanlder methods. 
 * @author www.codejava.net
 *
 */
@Controller
public class HomeController {

	
	@Autowired
	private EmployeeDAOImpl empDAO;
	@Autowired
	private CustomerDAOImpl custDAO;
	@Autowired
	private MedicineDAOImpl medDAO;
	@Autowired
	private SupplierDAOImpl supDAO;
	@Autowired
	private StockDAOImpl stockDAO;
	@Autowired
	private CartDAOImpl cartDAO;
	private  static String user;
	
	public HomeController()
	{
		this.user="";
	}
	
	
	
	
	@RequestMapping(value="/")
	public ModelAndView home(ModelAndView model) throws IOException{
		model.setViewName("home");
		return model;
	}
	
	
	
	@RequestMapping(value = "/newEmployee")
	public String newEmployee(Map<String,Object> model) {
		
		Employee emp = new Employee();
		model.put("employee", emp);
		
		return "emplogin";
	}
	
	
	
	@RequestMapping(value = "/saveEmployee", method = RequestMethod.POST)
	public String saveEmployee(@ModelAttribute Employee emp) {
		empDAO.save(emp);		
		return "adminlogin";
	}
	
	
	
	@RequestMapping("checkEmployee")
public ModelAndView checkEmployee(@RequestParam String emp_username) {
		
	
		ModelAndView view = new ModelAndView("adminlogin");
		{
		// If input bean does not have any validation error then proceed
	
			// If not a valid user then add error
			// else proceed to user welcome page
			if(!empDAO.search(emp_username)) {
			//	result.addError(new ObjectError("err", "Invalid Credentials"));
			} else {
				view.setViewName("admindashboard");
		
			}
	}
		return view;
		
	}
	
	@RequestMapping(value = "/check", method = RequestMethod.GET)
		public ModelAndView check(ModelAndView model) {
			model.setViewName("adminlogin");
			return model;
			
		
	}
	
	@RequestMapping(value = "/editEmployee")
	public ModelAndView editEmployee(@RequestParam long id) {
		ModelAndView model = new ModelAndView("emplogin");
		Employee emp = empDAO.get(id);
		
		model.addObject("employee", emp);
		
		return model;
	}
	
	
	//CustomerHandler
	
	@RequestMapping(value = "/newCustomer")
	public String newCustomer(Map<String,Object> model) {
		
	
        Customer cus=new Customer();
        model.put("customer",cus);
		
		return "custSignup";
	}
	
	
	
	@RequestMapping(value = "/saveCustomer", method = RequestMethod.POST)
	public String saveCustomer(@ModelAttribute Customer cus) {
		
		custDAO.save(cus);	
		
		return "custlogin";
	}
	
	
	
	@RequestMapping("/checkCustomer") 
	public ModelAndView checkCustomer(String cust_username) 
	{
		
		ModelAndView view = new ModelAndView("custlogin");
		

			// If not a valid user then add error
			// else proceed to user welcome page
			if(!custDAO.search(cust_username) ) 
			{
						
				
			} else {
				
				view.setViewName("dashboardcustomer");
				user=cust_username;	
				
			}
			return view;
		 
		
	}
	
	
	@RequestMapping(value = "/checkcust", method = RequestMethod.GET)
		public ModelAndView checkcust(ModelAndView model) {
			model.setViewName("custlogin");
			return model;
			
		
	}
	
	@RequestMapping(value="/display",method = RequestMethod.GET) 
	public ModelAndView profile(ModelAndView view) {
		
				view.setViewName("dashboardcustomer");
				return view;
				
				
				
			}
		
		
	
	
	
	@RequestMapping(value = "/profile", method = RequestMethod.GET)
	public ModelAndView listprofile(ModelAndView model,@ModelAttribute Customer cus) throws IOException{
		///check this
		List<Customer> listCustomer=custDAO.getProfile(user);
		model.addObject("listCustomer", listCustomer);
		model.setViewName("display");
		return model;
	}
	
	@RequestMapping(value="/editCustomer")    
    public ModelAndView editCustomer(@RequestParam long id){  
		ModelAndView model=new ModelAndView("custedit");
        Customer cus=custDAO.get(id);    
        model.addObject("customer",cus);  
        return model;    
    }   
	
	
	
	
	
	
	
	
	//Medicine Handler
	
	@RequestMapping(value="/displaymedicine",method = RequestMethod.GET)
	public ModelAndView listMedicine(ModelAndView model) throws IOException{
		List<Medicine> listMedicine = medDAO.listAll();
		model.addObject("listMedicine", listMedicine);
		model.setViewName("medicine");
		
		return model;
	}
	
	
	@RequestMapping(value="/medicine")
	public ModelAndView medicine(ModelAndView model) throws IOException{
		List<Medicine> listMed = medDAO.listAll();
		model.addObject("listMed", listMed);
		model.setViewName("medicinelist");
		
		return model;
	}
	
	@RequestMapping(value="product",method = RequestMethod.GET)
	public String index(ModelMap modelMap) {
		MedicineDAOImpl med = new MedicineDAOImpl();
		modelMap.put("medicines", med.findAll());
		return "medicine";
	}
	
	@RequestMapping(value = "/newMedicine")
	public String newMedicine(Map<String,Object> model) {
		Medicine med= new Medicine();
		model.put("medicine", med);
		return "medform";
		 
	}
	
	
	
	@RequestMapping(value = "/saveMedicine",method=RequestMethod.POST)
	public String saveMedicine(@ModelAttribute Medicine med) {
		medDAO.save(med);			
		return "success";
	}
	
	
	
	@RequestMapping(value = "/deleteMedicine")
	public String deleteMedicine(@RequestParam String id) {
		medDAO.delete(id);
		return "success";
	}
	
	@RequestMapping(value = "/editMedicine")
	public ModelAndView editMedicine(@RequestParam String id) {
		ModelAndView model = new ModelAndView("editmedform");
		Medicine med = medDAO.get(id);
		model.addObject("medicine",med);
		return model;
	}
	
	
	
	
	
	
	
	
	
	
	//Supplier
	@RequestMapping(value="/displaySupplier")
	public ModelAndView listSupplier(ModelAndView model) throws IOException{
		List<Supplier> listSupplier = supDAO.listAll();
		
		model.addObject("listSupplier", listSupplier);
		model.setViewName("supplier");
		
		return model;
	}
	
	
	@RequestMapping(value = "/newSupplier")
	public String newSupplier(Map<String,Object> model) {
		Supplier med= new Supplier();
		model.put("supplier", med);
		return "supplierform";
		 
	}
	
	@RequestMapping(value = "/saveSupplier",method=RequestMethod.POST)
	public String saveSupplier(@ModelAttribute Supplier sup) {
		supDAO.save(sup);			
		return "successsupplier";
	}
	
	
	@RequestMapping(value = "/deleteSupplier")
	public String deleteSupplier(@RequestParam long id) {
		try {
			supDAO.delete(id);
		} catch (UserNotFoundException e) {
			
			e.printStackTrace();
		}
		return "successsupplier";
	}
	
	@RequestMapping(value = "/editSupplier")
	public ModelAndView editSupplier(@RequestParam long id) {
		ModelAndView model = new ModelAndView("supplierform");
		Supplier sup = supDAO.get(id);
		model.addObject("supplier",sup);
		return model;
	}
	
	
	
	//Stock
	
	@RequestMapping(value="/displayStock")
	public ModelAndView listStock(ModelAndView model) throws IOException{
		List<Stock> listStock = stockDAO.listAll();
		
		model.addObject("listStock", listStock);
		model.setViewName("stock");
		
		return model;
	}
	
	@RequestMapping(value = "/newStock")
	public String newStock(Map<String,Object> model) {
		Stock stock= new Stock();
		model.put("stock", stock);
		return "stockform";
		 
	}
	
	@RequestMapping(value = "/saveStock",method=RequestMethod.POST)
	public String saveStock(@ModelAttribute Stock sup) {
		stockDAO.save(sup);			
		return "successstock";
	}
	
	
	@RequestMapping(value = "/deleteStock")
	public String deleteStock(@RequestParam long id) {
		stockDAO.delete(id);
		return "successstock";
	}
	
	@RequestMapping(value = "/editStock")
	public ModelAndView editStock(@RequestParam long id) {
		ModelAndView model = new ModelAndView("stockform");
		Stock sup = stockDAO.get(id);
		model.addObject("stock",sup);
		return model;
	}
	
	
	

	
	
	//////////////////////////////////////////////
	
	
	
	
@RequestMapping(value = "/saveCart",method=RequestMethod.POST)
public String saveCart(@ModelAttribute Cart cart) {
	 cartDAO.deleteall();
	
	cartDAO.save(cart);	
	return "successcart";
	
}

@RequestMapping(value="/displayCart")
public ModelAndView listCart(ModelAndView model) throws IOException{
	List<Cart> listCart = cartDAO.listAll();
	
	model.addObject("listCart", listCart);
	model.setViewName("cart");
	
	return model;
}


@RequestMapping(value="/orders")
public ModelAndView orders(ModelAndView model) throws IOException{
	List<Cart> listCart = cartDAO.listAll();
	
	model.addObject("listCart", listCart);
	model.setViewName("redirect:/");
	
	return model;
}
	
}


	
	

