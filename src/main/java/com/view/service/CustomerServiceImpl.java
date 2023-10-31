package com.view.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.view.dao.ICustomerDAO;
import com.view.model.Customer;

@Service
public class CustomerServiceImpl implements ICustomerServiceImpl {

	@Autowired
	private ICustomerDAO repo;
	
	@Override
	public List<Customer> getCustomers() {
		// TODO Auto-generat ed method stub
		return (List<Customer>) repo.findAll();
	}

	public void saveCustomer(Customer customer) {
		 repo.save(customer);	
	}
	
	
	public Customer getCustomer(Integer customerId) {
		Optional<Customer> optional = repo.findById(customerId);
		return optional.get();
	}

}
