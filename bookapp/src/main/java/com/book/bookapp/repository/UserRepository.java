package com.book.bookapp.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.book.bookapp.model.User;



public interface UserRepository extends JpaRepository<User,Integer> {

	
	public User findByEmailAndPassword(String email,String password);
	
	
	
}