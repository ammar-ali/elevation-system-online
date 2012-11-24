/**
 * 
 */
package edu.aptech.vn.action.admin;

import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

import com.opensymphony.xwork2.ActionContext;

/**
 * @author BinhHC
 * 
 */
@Namespace("/admin")
public class IndexAction extends edu.aptech.vn.action.IndexAction {
	@Action(value = "index", results = { @Result(name = "success", type="redirect", location = "user/") })
	public String execute() throws Exception {
		
		return SUCCESS;
	}

}
