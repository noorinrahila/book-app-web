package com.book.bookapp.form;

import javax.validation.constraints.NotNull;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class RegistrationForm {

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	@NotNull
	@NotBlank(message = "Name cannot be empty")
	@Size.List({ @Size(min = 2, message = "Name must have minimum 2 characters"),
			@Size(max = 30, message = "Name cannot exceed 30 characters") })
	private String name;

	@NotNull
	@NotBlank(message = "Email cannot be empty")
    @Email(message = "Invalid Email")
	@Size.List({ @Size(min = 13, message = "Email must have minimum 10 characters"),
		@Size(max = 50, message = "Email cannot exceed 50 characters") })
	private String email;

	@NotNull
	@NotBlank(message = "Password cannot be empty")
	@Size.List({ @Size(min = 8, message = "Password  must have minimum 8 characters"),
			@Size(max = 30, message = "Password cannot exceed 30 characters") })
	private String password;

}
