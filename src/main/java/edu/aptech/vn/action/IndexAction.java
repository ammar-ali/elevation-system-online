/**
 * 
 */
package edu.aptech.vn.action;

import edu.aptech.vn.model.Product;
import org.apache.struts2.convention.annotation.Action;
import org.apache.struts2.convention.annotation.Namespace;
import org.apache.struts2.convention.annotation.Result;
import org.hibernate.Criteria;
import org.hibernate.criterion.Order;

import java.util.List;

/**
 * @author BinhHC
 * 
 */
@Namespace("/")
public class IndexAction extends BaseAction {
    private List newestProducts;
    private List featuredProducts;

    @Action(value = "index", results={
        @Result(name="success", location="index.jsp")
    })
	public String execute() throws Exception {
        setTitle("Home");

        featuredProducts = db.createQuery("from Product ").setMaxResults(4).list();
        Criteria criteria = db.createCriteria(Product.class);
        criteria.setMaxResults(4);
        criteria.addOrder(Order.desc("id"));
        newestProducts = criteria.list();
		return SUCCESS;
	}

    public List getNewestProducts() {
        return newestProducts;
    }

    public void setNewestProducts(List newestProducts) {
        this.newestProducts = newestProducts;
    }

    public List getFeaturedProducts() {
        return featuredProducts;
    }

    public void setFeaturedProducts(List featuredProducts) {
        this.featuredProducts = featuredProducts;
    }
}
