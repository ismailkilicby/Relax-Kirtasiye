package com.jtspringproject.JtSpringProject.dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.jtspringproject.JtSpringProject.models.Category;
import com.jtspringproject.JtSpringProject.models.Product;

@Repository
public class productDao {
	@Autowired
    private SessionFactory sessionFactory;
	
	public void setSessionFactory(SessionFactory sf) {
        this.sessionFactory = sf;
    }
	
	@Transactional
	public List<Product> getProducts(){
		return this.sessionFactory.getCurrentSession().createQuery("from PRODUCT where customer_id='1'").list();
	}
	@Transactional
	public List<Product> getProductsWhere(){
		return this.sessionFactory.getCurrentSession().createQuery("from PRODUCT where customer_id='2'").list();
	}
	@Transactional
	public List<Product> getProductsWhere3(){
		return this.sessionFactory.getCurrentSession().createQuery("from PRODUCT where customer_id='3'").list();
	}
	@Transactional
	public List<Product> getProductsWhere4(){
		return this.sessionFactory.getCurrentSession().createQuery("from PRODUCT where customer_id='4'").list();
	}
	@Transactional
	public List<Product> getProductsWhere5(){
		return this.sessionFactory.getCurrentSession().createQuery("from PRODUCT where customer_id='5'").list();
	}
	@Transactional
	public List<Product> getProductsWhere6(){
		return this.sessionFactory.getCurrentSession().createQuery("from PRODUCT where customer_id='6'").list();
	}
	@Transactional
	public List<Product> getProductsWhere7(){
		return this.sessionFactory.getCurrentSession().createQuery("from PRODUCT where customer_id='7'").list();
	}
	
	@Transactional
	public List<Product> getProductsWhere8(){
		return this.sessionFactory.getCurrentSession().createQuery("from CUSTOMER").list();
	}
	
	@Transactional
	public Product addProduct(Product product) {
		this.sessionFactory.getCurrentSession().save(product);
		return product;
	}
	
	@Transactional
	public Product getProduct(int id) {
		return this.sessionFactory.getCurrentSession().get(Product.class, id);
	}

	public Product updateProduct(Product product){
		this.sessionFactory.getCurrentSession().update(String.valueOf(Product.class),product);
		return product;
	}
	@Transactional
	public Boolean deletProduct(int id) {

		Session session = this.sessionFactory.getCurrentSession();
		Object persistanceInstance = session.load(Product.class, id);

		if (persistanceInstance != null) {
			session.delete(persistanceInstance);
			return true;
		}
		return false;
	}

}
