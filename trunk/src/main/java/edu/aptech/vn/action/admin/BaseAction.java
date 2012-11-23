package edu.aptech.vn.action.admin;

import org.apache.struts2.convention.annotation.Result;
import org.apache.struts2.convention.annotation.Results;

/**
 * All actions must extend this!!!
 * User: LongDH
 * Date: 11/16/12
 * Time: 7:13 PM
 */
@Results({
		@Result(name = "error", location = "/admin/error.jsp")
})
public abstract class BaseAction extends edu.aptech.vn.action.BaseAction {
}
