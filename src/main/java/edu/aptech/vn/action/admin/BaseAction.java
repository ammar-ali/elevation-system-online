package edu.aptech.vn.action.admin;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;
import org.hibernate.Session;

import com.opensymphony.xwork2.ActionSupport;

import edu.aptech.vn.utils.HibernateUtil;

/**
 * All actions must extend this!!!
 * User: LongDH
 * Date: 11/16/12
 * Time: 7:13 PM
 */
@Results({
    @Result(name="error", location="/error.jsp")
})
public abstract class BaseAction  extends ActionSupport {
	protected final Session db = HibernateUtil.getSession().openSession();
}
