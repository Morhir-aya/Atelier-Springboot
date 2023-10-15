package com.aya.aya;

import com.aya.aya.entities.Product;
import com.aya.aya.repositories.ProduitRepository;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.Date;
import java.util.List;

@SpringBootTest
class AyaApplicationTests {
	@Autowired
	ProduitRepository productRepository;

	@Test
	public void TestCreateProduct(){
		Product product = new Product("Asus", 9000.00, new Date());
		productRepository.save(product);
	}

	@Test
	public void TestUpdateProduct(){
		Product product = productRepository.findById(1L).get();
		product.setPriceProduct(10000.00);
		productRepository.save(product);
	}

	@Test
	public void TestFindProductByd(){
		Product product = productRepository.findById(1L).get();
		System.out.println(product);
	}

	@Test
	public void TestFindAllProduct(){
		List<Product> products = productRepository.findAll();
		for (Product p : products){
			System.out.println(p);
		}
		products.forEach(System.out::println);
	}

	@Test
	public void TestDeleteAllProducts(){
		productRepository.deleteAll();
	}
}
