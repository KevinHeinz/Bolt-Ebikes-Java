package com.ebikes.website.dto;

import com.ebikes.website.entity.Address;
import com.ebikes.website.entity.Customer;
import com.ebikes.website.entity.Order;
import com.ebikes.website.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class PurchaseDetails {

    private Customer customer;

    private Address shippingAddress;

    private Address billingAddress;

    private Order order;

    private Set<OrderItem> orderItems;
}
