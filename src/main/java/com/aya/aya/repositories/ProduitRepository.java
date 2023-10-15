package com.aya.aya.repositories;

import com.aya.aya.entities.Product;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ProduitRepository extends JpaRepository<Product, Long> {
}
