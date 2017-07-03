package com.book.bookapp.controller;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.book.bookapp.form.RegistrationForm;
import com.book.bookapp.model.User;
import com.book.bookapp.repository.UserRepository;
import com.book.bookapp.service.UserService;


@Controller
@RequestMapping("/users")

public class UserController {

	@Autowired
	UserRepository userRepo;
	@Autowired
	UserService userService;
	

	@PostMapping("/save")
	public String save(@ModelAttribute @Valid RegistrationForm regData, BindingResult result,ModelMap modelMap, 
			HttpSession session) throws Exception {
		try {
			if (result.hasErrors()) {
				modelMap.addAttribute("errors", result.getAllErrors());
				modelMap.addAttribute("regData", regData );
				return "user/register";
			}else {
				userService.save(regData);
				
				return "user/login";
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			modelMap.addAttribute("regData", regData);
			modelMap.addAttribute("ERROR_MESSAGE", e.getMessage());
			return "user/register";
		}
		
		
	}

	@GetMapping("/login")
	public String login() {
		return "user/login";
	}

	@PostMapping("/validate")

	public String findByEmailAndPassword(@RequestParam("email") String email,
			@RequestParam("password") String password ,HttpSession session) {
		User user = userRepo.findByEmailAndPassword(email, password);

		if (user != null) {
			System.out.println("valid user");
			session.setAttribute("user",user);
			return "books/book";
		} else {
			System.out.println("invalid user");
			return "user/register";
		}

	}
	@GetMapping("/logout")
	public String signOut(HttpSession session) {
		session.invalidate();
		return "user/login";
}
}