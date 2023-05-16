package com.ebikes.website.service;

import com.ebikes.website.dto.PurchaseDetails;
import com.ebikes.website.dto.PurchaseResponse;

public interface PurchaseService {

    PurchaseResponse placeOrder(PurchaseDetails purchaseDetails);
}
