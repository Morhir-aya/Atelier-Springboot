package com.aya.aya.services;

import com.aya.aya.entities.Product;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public interface ProductService {
    Product saveProduct(Product product);
    Product updateProduct(Product product);
    Product getProduct(Long id);
    List<Product> getAllProducts();
    void deleteProductById(Long id);
    void deleteAllProducts();
}
