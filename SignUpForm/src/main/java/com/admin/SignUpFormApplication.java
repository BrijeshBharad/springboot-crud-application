package com.admin;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.AutoConfiguration;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.boot.web.servlet.support.SpringBootServletInitializer;
@SpringBootApplication
@AutoConfiguration
@EntityScan(basePackages = {"com.admin.model"})
public class SignUpFormApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(SignUpFormApplication.class, args);
	}

}