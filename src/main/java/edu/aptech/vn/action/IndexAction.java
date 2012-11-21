/**
 * 
 */
package edu.aptech.vn.action;

import com.opensymphony.xwork2.ActionContext;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;

/**
 * @author BinhHC
 * 
 */
@Namespace("/")
public class IndexAction extends BaseAction {

    @Action(value = "index", results={
        @Result(name="success", location="index.jsp")
    })
	public String execute() throws Exception {
        ActionContext.getContext().getParameters().put("a", "aaa");
        ActionContext.getContext().getSession().put("b", "bbb");
        getSession().put("a", "asdd");
		return SUCCESS;
	}
}
