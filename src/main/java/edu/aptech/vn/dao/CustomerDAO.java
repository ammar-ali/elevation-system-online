/**
 * 
 */
package edu.aptech.vn.dao;

import java.util.List;

import edu.aptech.vn.model.Customer;

/**
 * @author BinhHC
 *
 */
public interface CustomerDAO {
	void addCustomer(Customer customer);
	List<Customer> listCustomer();	
}
