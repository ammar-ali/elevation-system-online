/**
 * 
 */
package edu.aptech.vn.dao;

import edu.aptech.vn.model.Customer;

import java.util.List;

/**
 * @author BinhHC
 *
 */
public interface CustomerDAO {
	void addCustomer(Customer customer);
	List<Customer> listCustomer();
}
