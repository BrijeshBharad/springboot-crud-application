package com.admin.model;

import javax.validation.constraints.NotBlank;
import javax.validation.constraints.Size;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.Getter;
import lombok.Setter;

@Setter
@Getter
@Table(name = "data")
@Entity
public class Customer {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	@NotBlank(message = "FirstName is mandatory")
	@Column
	private String firstName;
	@NotBlank(message = "LastName is mandatory")
	@Column
	private String lastName;
	@Column
	private String birthDate;
	@Size(min = 10, max = 10, message = "Criteria not matched")
	@NotBlank(message = "Number is mandatory")
	@Column
	private String mobileNo;
	@NotBlank(message = "Address is mandatory")
	@Column
	private String addressOne;
	@Column
	private String addressSecond;
	@Column
	private int age;
	@Column
	private boolean gender;
	@Column
	@NotBlank(message = "Email is mandatory")
	private String email;

}