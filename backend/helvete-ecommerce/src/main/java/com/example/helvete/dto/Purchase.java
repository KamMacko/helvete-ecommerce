package com.example.helvete.dto;

import com.example.helvete.entity.Address;
import com.example.helvete.entity.Customer;
import com.example.helvete.entity.Order;
import com.example.helvete.entity.OrderItem;
import lombok.Data;

import java.util.Set;

@Data
public class Purchase {

    private Customer customer;
    private Address shippingAddress;
    private Address billingAddress;
    private Order order;
    private Set<OrderItem> orderItems;
}
