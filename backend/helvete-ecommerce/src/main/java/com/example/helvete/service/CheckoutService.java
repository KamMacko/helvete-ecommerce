package com.example.helvete.service;

import com.example.helvete.dto.PaymentInfo;
import com.example.helvete.dto.Purchase;
import com.example.helvete.dto.PurchaseResponse;
import com.stripe.exception.StripeException;
import com.stripe.model.PaymentIntent;

public interface CheckoutService {

    PurchaseResponse placeOrder(Purchase purchase);

    PaymentIntent createPaymentIntent(PaymentInfo paymentInfo) throws StripeException;
}
