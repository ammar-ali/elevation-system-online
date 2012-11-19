package edu.aptech.vn.action;

import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

/**
 * All actions must extend this!!!
 * User: LongDH
 * Date: 11/16/12
 * Time: 7:13 PM
 */
@Results({
    @Result(name="error", location="/error.jsp")
})
public abstract class BaseAction extends ActionSupport {
}
