package com.aya.aya.services;

import com.aya.aya.entities.Product;
import com.aya.aya.repositories.ProduitRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService{
    @Autowired
    ProduitRepository produitRepository;
    @Override
    public Product saveProduct(Product product) {
        return produitRepository.save(product);
    }

    @Override
    public Product updateProduct(Product product) {
        return produitRepository.save(product);
    }

    @Override
    public Product getProduct(Long id) {
        return produitRepository.findById(id).get();
    }

    @Override
    public List<Product> getAllProducts() {
        return produitRepository.findAll();
    }

    @Override
    public void deleteProductById(Long id) {
        produitRepository.deleteById(id);
    }

    @Override
    public void deleteAllProducts() {
        produitRepository.deleteAll();
    }
}
