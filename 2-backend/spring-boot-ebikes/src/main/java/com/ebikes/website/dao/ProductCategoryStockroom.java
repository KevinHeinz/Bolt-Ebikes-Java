package com.ebikes.website.dao;

import com.ebikes.website.entity.ProductCategory;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "productCategory", path = "product-category")
public interface ProductCategoryStockroom extends JpaRepository<ProductCategory, Long> {
}
