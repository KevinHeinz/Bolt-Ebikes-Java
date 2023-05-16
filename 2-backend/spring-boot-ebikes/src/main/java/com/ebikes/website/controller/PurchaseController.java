package com.ebikes.website.controller;

import com.ebikes.website.dto.PurchaseDetails;
import com.ebikes.website.dto.PurchaseResponse;
import com.ebikes.website.service.PurchaseService;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/checkout")
public class PurchaseController {

    private PurchaseService purchaseService;

    public PurchaseController(PurchaseService purchaseService) {
        this.purchaseService = purchaseService;
    }

    @PostMapping("/purchase-details")
    public PurchaseResponse placeOrder(@RequestBody PurchaseDetails purchaseDetails) {

        PurchaseResponse purchaseResponse = purchaseService.placeOrder(purchaseDetails);

        return purchaseResponse;
    }
}
