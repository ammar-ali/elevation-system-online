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
@Namespace("/product")
public class ProductAction extends BaseAction {
    private List featuredProducts;
    private List products;
    private Product product;

    @Action(value = "index", results={
        @Result(name="success", location="index.jsp"),
        @Result(name="view", location="view.jsp")
    })
	public String execute() throws Exception {
        featuredProducts = db.createQuery("from Product ").setMaxResults(4).list();

        if (getId() == 0) {
            setTitle("Products");
            Criteria criteria = db.createCriteria(Product.class);
            criteria.setMaxResults(12);
            criteria.addOrder(Order.desc("id"));
            products = criteria.list();

            return SUCCESS;
        }

        product = (Product) db.get(Product.class, getId());
        if (product != null) {
            setTitle(product.getName());
            return "view";
        }

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

    public Product getProduct() {
        return product;
    }

    public void setProduct(Product product) {
        this.product = product;
    }
}
