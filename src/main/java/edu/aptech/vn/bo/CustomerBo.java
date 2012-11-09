/**
 * 
 */
package edu.aptech.vn.bo;

import java.util.List;

import edu.aptech.vn.model.Customer;

/**
 * @author BinhHC
 *
 */
public interface CustomerBo {
	void addCustomer(Customer customer);
	List<Customer> listCustomer();
}
