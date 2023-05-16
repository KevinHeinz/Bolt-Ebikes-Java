package com.ebikes.website.service;

import com.ebikes.website.dao.CustomerDb;
import com.ebikes.website.dto.PurchaseDetails;
import com.ebikes.website.dto.PurchaseResponse;
import com.ebikes.website.entity.Customer;
import com.ebikes.website.entity.Order;
import com.ebikes.website.entity.OrderItem;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import javax.transaction.Transactional;
import java.util.Set;
import java.util.UUID;

@Service
public class PurchaseServiceImpl implements PurchaseService {

    private CustomerDb customerDb;

    @Autowired
    public PurchaseServiceImpl(CustomerDb customerDb) {
        this.customerDb = customerDb;
    }

    @Override
    @Transactional
    public PurchaseResponse placeOrder(PurchaseDetails purchaseDetails) {
        // get order details from dto
        Order order = purchaseDetails.getOrder();

        // create order tracking number
        String trackingNumber = generateTrackingNumber();
        order.setTrackingNumber(trackingNumber);

        // put orderItems into order
        Set<OrderItem> orderItems = purchaseDetails.getOrderItems();
        orderItems.forEach(item -> order.add(item));

        // put billingAddress into order
        order.setBillingAddress(purchaseDetails.getBillingAddress());

        // put shippingAddress into order
        order.setShippingAddress(purchaseDetails.getShippingAddress());

        // put order into customer object
        Customer customer = purchaseDetails.getCustomer();

        // check if email exists in Db. If exists, add order to customer
        String theEmail = customer.getEmail();
        Customer customerFromDb = customerDb.findByEmail(theEmail);

        if (customerFromDb != null) {

            customer = customerFromDb;
        }

        customer.add(order);

        // save order to CustomerDb
        customerDb.save(customer);

        // return PurchaseResponse
        return new PurchaseResponse(trackingNumber);

    }

    private String generateTrackingNumber() {

        // universally unique identifier (UUID) generator
        return UUID.randomUUID().toString();

    }
}
