package com.book.bookapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.book.bookapp.model.Book;
import com.book.bookapp.repository.BookRepository;


@Service
public class BookService {
	@Autowired
	private BookRepository bookRepo;

	public List<Book> findAll() {
		return bookRepo.findAll();
	}

	public Book findOne(Long id) {
		return bookRepo.findOne(id);
	}


	public List<Book> findByPriceDesc() {
		return bookRepo.findByOrderByPriceDesc();
	}
	
	public List<Book> findByPriceAsc() {
		return bookRepo.findByOrderByPriceAsc();
	}
	public List<Book> findByReleasedDateDesc() {
		return bookRepo.findByOrderByReleasedDateDesc();
	}


}
