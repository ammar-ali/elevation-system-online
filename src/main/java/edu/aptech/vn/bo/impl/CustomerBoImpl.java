/**
 * 
 */
package edu.aptech.vn.bo.impl;

import java.util.List;

import edu.aptech.vn.bo.CustomerBo;
import edu.aptech.vn.dao.CustomerDAO;
import edu.aptech.vn.model.Customer;

/**
 * @author BinhHC
 *
 */
public class CustomerBoImpl implements CustomerBo {

	CustomerDAO customerDAO;
	
	//DI via Spring
	public void setCustomerDAO(CustomerDAO customerDAO) {
		this.customerDAO = customerDAO;
	}
	
	/* (non-Javadoc)
	 * @see edu.aptech.vn.customer.bo.CustomerBo#addCustomer(edu.aptech.vn.customer.model.Customer)
	 */
	public void addCustomer(Customer customer) {
		customerDAO.addCustomer(customer);
	}

	/* (non-Javadoc)
	 * @see edu.aptech.vn.customer.bo.CustomerBo#listCustomer()
	 */
	public List<Customer> listCustomer() {
		
		return customerDAO.listCustomer();
	}

}
