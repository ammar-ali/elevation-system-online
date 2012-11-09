/**
 * 
 */
package edu.aptech.vn.dao.impl;

import java.util.List;

import org.springframework.orm.hibernate3.support.HibernateDaoSupport;

import edu.aptech.vn.dao.CustomerDAO;
import edu.aptech.vn.model.Customer;

/**
 * @author BinhHC
 *
 */
public class CustomerDAOImpl extends HibernateDaoSupport implements CustomerDAO {

	/* (non-Javadoc)
	 * @see edu.aptech.vn.customer.dao.CustomerDAO#addCustomer(edu.aptech.vn.customer.model.Customer)
	 */
	public void addCustomer(Customer customer) {
		getHibernateTemplate().save(customer);
	}

	/* (non-Javadoc)
	 * @see edu.aptech.vn.customer.dao.CustomerDAO#listCustomer()
	 */
	public List<Customer> listCustomer() {
		
		return getHibernateTemplate().find("from Customer");
	}

}
