package com.view.dao;

import org.springframework.data.repository.CrudRepository;

import com.view.model.Customer;


public interface ICustomerDAO extends CrudRepository<Customer, Integer> {

}
