/**
 * 
 */
package edu.aptech.vn.action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.apache.log4j.Logger;

import com.opensymphony.xwork2.ModelDriven;

import edu.aptech.vn.bo.CustomerBo;
import edu.aptech.vn.model.Customer;

/**
 * @author BinhHC
 *
 */
public class CustomerAction implements ModelDriven {

	Customer customer = new Customer();
	List<Customer> customerList = new ArrayList<Customer>();
	private static final Logger logger = Logger.getLogger(CustomerAction.class);
	
	CustomerBo customerBo;
	//DI via Spring
	public void setCustomerBo(CustomerBo customerBo) {
		this.customerBo = customerBo;
	}
 
	public Object getModel() {
		return customer;
	}
 
	public List<Customer> getCustomerList() {
		return customerList;
	}
 
	public void setCustomerList(List<Customer> customerList) {
		this.customerList = customerList;
	}
 
	//save customer
	public String addCustomer() throws Exception{
 
		//save it
		customer.setCreatedDate(new Date());
		customerBo.addCustomer(customer);
 
		if(logger.isDebugEnabled()){
			logger.debug("Testing log4j .......");
		}
		
		//reload the customer list
		customerList = null;
		customerList = customerBo.listCustomer();
 
		return "success";
 
	}
 
	//list all customers
	public String listCustomer() throws Exception{
 
		customerList = customerBo.listCustomer();
 
		return "success";
 
	}

}
