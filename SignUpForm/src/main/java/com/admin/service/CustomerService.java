package com.admin.service;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.ModelAttribute;
import com.admin.model.Customer;
import com.admin.repository.CustomerRepository;

@Service
public class CustomerService  {

	@Autowired
	CustomerRepository customerRepository;
	Customer customer;
	public Customer saveOrUpdate(@ModelAttribute Customer customerform) {
		return customerRepository.save(customerform);
	}

	public List<Customer> getAllCustomers() {
		return (List<Customer>) customerRepository.findAll();
	}

	public void delete(int id) {
		customerRepository.deleteById(id);
	}

	public boolean checkEmail(String email) {
		return customerRepository.existsByEmail(email);
	}

	public boolean checkNumber(String mobileNo) {
		return customerRepository.existsByMobileNo(mobileNo);
	}
	
	public Customer getCustomerById(int id) {
		return customerRepository.findById(id).orElseThrow(() -> new RuntimeException("Customer not found for id: " + id));
	}

}