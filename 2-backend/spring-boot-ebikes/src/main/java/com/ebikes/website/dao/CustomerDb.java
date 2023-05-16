package com.ebikes.website.dao;

import com.ebikes.website.entity.Customer;
import org.springframework.data.jpa.repository.JpaRepository;

public interface CustomerDb extends JpaRepository<Customer, Long> {

    Customer findByEmail(String theEmail);
}
