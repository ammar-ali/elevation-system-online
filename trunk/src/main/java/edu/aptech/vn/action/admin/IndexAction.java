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
	@Action(value = "index", results = { @Result(name = "success", location = "index.jsp") })
	public String execute() throws Exception {
		ActionContext.getContext().getParameters().put("a", "aaa");
		ActionContext.getContext().getSession().put("b", "bbb");
		getSession().put("a", "asdd");
		return SUCCESS;
	}

}
