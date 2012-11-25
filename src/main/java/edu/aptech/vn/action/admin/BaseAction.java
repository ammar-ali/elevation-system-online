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
	protected int page = 1;
	protected int nextPage = 1;
	protected int previousPage = 1;
	protected int lastPage;
	protected int offset;
		
	protected static final int PER_PAGE = 4;
	/**
	 * @return the page
	 */
	public int getPage() {
		return page;
	}
	/**
	 * @param page the page to set
	 */
	public void setPage(int page) {
		this.page = page;
	}
	/**
	 * @return the nextPage
	 */
	public int getNextPage() {
		return nextPage;
	}
	/**
	 * @param nextPage the nextPage to set
	 */
	public void setNextPage(int nextPage) {
		this.nextPage = nextPage;
	}
	/**
	 * @return the previousPage
	 */
	public int getPreviousPage() {
		return previousPage;
	}
	/**
	 * @param previousPage the previousPage to set
	 */
	public void setPreviousPage(int previousPage) {
		this.previousPage = previousPage;
	}
	/**
	 * @return the lastPage
	 */
	public int getLastPage() {
		return lastPage;
	}
	/**
	 * @param lastPage the lastPage to set
	 */
	public void setLastPage(int lastPage) {
		this.lastPage = lastPage;
	}
	
	/**
	 * @param offset the offset to set
	 */
	public void setOffset(int offset) {
		this.offset = offset;
	}
	/**
	 * @return the offset
	 */
	public int getOffset() {
		return offset;
	}
	public void paging(int totalRows) {
		lastPage = totalRows/PER_PAGE;
		if(totalRows%PER_PAGE >0) {
			++lastPage;
		}
		offset = (page-1)*PER_PAGE;
		if (page < lastPage) {
			nextPage = page+1;
		} else {
			nextPage = lastPage;
		}
		if (page>1) {
			previousPage = page-1;
		}
	}
}
