/**
 * 
 */
package edu.aptech.vn.action;

import com.opensymphony.xwork2.ModelDriven;
import edu.aptech.vn.model.Customer;
import org.apache.log4j.Logger;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/**
 * @author BinhHC
 *
 */
public class CustomerAction implements ModelDriven {

	Customer customer = new Customer();
	List<Customer> customerList = new ArrayList<Customer>();
	private static final Logger logger = Logger.getLogger(CustomerAction.class);
	
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

		if(logger.isDebugEnabled()){
			logger.debug("Testing log4j .......");
		}

		//reload the customer list
		customerList = null;

		return "success";

	}
 
	//list all customers
	public String listCustomer() throws Exception{
 
 
		return "success";
 
	}

}
