package com.view.service;

import java.util.List;

import com.view.model.Customer;

public interface ICustomerServiceImpl {

	public List<Customer> getCustomers();
	public void saveCustomer(Customer customer);
	public Customer getCustomer(Integer customerId);
}
