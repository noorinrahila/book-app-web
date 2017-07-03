package com.book.bookapp.service;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestParam;

import com.book.bookapp.form.RegistrationForm;
import com.book.bookapp.model.User;
import com.book.bookapp.repository.UserRepository;
import com.book.bookapp.util.EmailUtil;



@Service
public class UserService {
	@Autowired
	private UserRepository userRepo;

	@Autowired
	private EmailUtil emailutil;
	public String save(RegistrationForm regData) throws Exception  {
		User user=new User();

		user.setName(regData.getName());
		user.setEmail(regData.getEmail());
		user.setPassword(regData.getPassword());

		userRepo.save(user);
		String subject = "Your account has been created";
		String body = "Welcome to Revature ! You can login to your account !";
		
		String email=regData.getEmail();
		emailutil.send(email, subject, body);
		return "login";
		
	


}
}
