package com.jtspringproject.JtSpringProject.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.jtspringproject.JtSpringProject.dao.productDao;
import com.jtspringproject.JtSpringProject.models.Product;

@Service
public class productService {
	@Autowired
	private productDao productDao;
	
	public List<Product> getProducts(){
		return this.productDao.getProducts();
	}
	public List<Product> getProductsWhere(){
		return this.productDao.getProductsWhere();
	}
	public List<Product> getProductsWhere3(){
		return this.productDao.getProductsWhere3();
	}
	public List<Product> getProductsWhere4(){
		return this.productDao.getProductsWhere4();
	}
	public List<Product> getProductsWhere5(){
		return this.productDao.getProductsWhere5();
	}
	public List<Product> getProductsWhere6(){
		return this.productDao.getProductsWhere6();
	}
	public List<Product> getProductsWhere7(){
		return this.productDao.getProductsWhere7();
	}
	
	public List<Product> getProductsWhere8(){
		return this.productDao.getProductsWhere8();
	}
	
	public Product addProduct(Product product) {
		return this.productDao.addProduct(product);
	}
	
	public Product getProduct(int id) {
		return this.productDao.getProduct(id);
	}

	public Product updateProduct(int id,Product product){
		product.setId(id);
		return this.productDao.updateProduct(product);
	}
	public boolean deleteProduct(int id) {
		return this.productDao.deletProduct(id);
	}

	
}
