package productcrudapp.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Component;

import productcrudapp.model.Product;

@Component
public class productDao {

	
	@Autowired
	private HibernateTemplate hibernateTemplate;

	
	@Transactional
	public void createproduct(Product product) {
		this.hibernateTemplate.saveOrUpdate(product);
	}
	public List<Product> getProducts(){
		List<Product> product=this.hibernateTemplate.loadAll(Product.class);
		return product;
	}
	@Transactional
	public void deleteProduct(int pid) {
		
		Product p = this.hibernateTemplate.load(Product.class, pid);
		this.hibernateTemplate.delete(p);
	}
	
	public Product getProduct(int pid) {
		return this.hibernateTemplate.get(Product.class, pid);
	}

}
