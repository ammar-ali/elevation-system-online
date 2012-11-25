/**
 * 
 */
package edu.aptech.vn.action;

import edu.aptech.vn.model.Product;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.Criteria;
import org.hibernate.criterion.Restrictions;

import java.util.ArrayList;
import java.util.List;

/**
 * @author BinhHC
 * 
 */
@Namespace("/search")
public class SearchAction extends BaseAction {
	private List featuredProducts;
	private List products = new ArrayList();

    @Action(value = "index", results={
        @Result(name="success", location="index.jsp")
    })
	public String execute() throws Exception {
		setTitle("Search for: " + getParam("s"));
		featuredProducts = db.createQuery("from Product ").setMaxResults(4).list();

		Criteria criteria = db.createCriteria(Product.class);
		criteria.add(Restrictions.like("name", "%" + getParam("s") + "%"));
		products = criteria.list();
        return SUCCESS;
    }

	public List getFeaturedProducts() {
		return featuredProducts;
	}

	public void setFeaturedProducts(List featuredProducts) {
		this.featuredProducts = featuredProducts;
	}

	public List getProducts() {
		return products;
	}

	public void setProducts(List products) {
		this.products = products;
	}
}
