package com.admin.controller;

import java.util.List;
import java.util.Objects;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import com.admin.model.Customer;
import com.admin.repository.CustomerRepository;
import com.admin.service.CustomerService;

@Controller
public class CustomerController {

	@Autowired
	CustomerService customerService;
	@Autowired
	CustomerRepository customerRepository;

	@GetMapping("/Registration")
	public String home(Model model) {
		model.addAttribute("customerform", new Customer());
		return "customer-registration-form";
	}

	@PostMapping("/post")
	public String save(@ModelAttribute Customer customerform, Model model) {
		boolean emailExists = customerService.checkEmail(customerform.getEmail());
		boolean numberExists = customerService.checkNumber(customerform.getMobileNo());
		Long id = customerform.getId();
		if (emailExists || numberExists && Objects.isNull(id)) {
			return "data-exists";
		}
		else {
			Customer customer = customerService.saveOrUpdate(customerform);
				if (customer != null) {
				return "redirect:/user-list";
			}
		}
		return "redirect:/user-list";
	}

	@GetMapping("/user-list")
	public String showUserList(Model model) {
		List<Customer> userList = customerService.getAllCustomers();
		model.addAttribute("customers", userList);
		return "customer-view-list";
	}

	@RequestMapping(path = "/delete/{id}", method = { RequestMethod.DELETE, RequestMethod.GET })
	public String delete(@PathVariable("id") int id) {
		customerService.delete(id);
		return "redirect:/user-list";
	}

	@RequestMapping(path = "/editCustomer/{id}", method = { RequestMethod.PUT, RequestMethod.GET })
	public ModelAndView editCustomer(@PathVariable("id") int id,
			@ModelAttribute("customerform") Customer customerform) {
		ModelAndView model = new ModelAndView();
		Customer customer = customerService.getCustomerById(id);
		model.addObject("customerform", customer);
		model.setViewName("customer-registration-form");
		customerService.saveOrUpdate(customer);
		return model;
	}

}