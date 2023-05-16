package com.ebikes.website.dao;

import com.ebikes.website.entity.Country;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "countries", path = "countries")
public interface DeliveryCountryDb extends JpaRepository<Country, Integer> {
}
