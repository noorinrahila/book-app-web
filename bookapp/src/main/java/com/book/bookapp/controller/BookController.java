package com.book.bookapp.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.book.bookapp.model.Book;
import com.book.bookapp.repository.BookRepository;
import com.book.bookapp.service.BookService;

@Controller
@RequestMapping("/books")

public class BookController {

	@Autowired
	BookRepository bookRepo;
	@Autowired
	BookService bookService;

	@GetMapping
	public String list(@RequestParam(value = "price", required = false) String priceFilter,
			@RequestParam(value = "released_date", required = false) String releasedDateFilter, HttpSession session) {

		List<Book> book = null;

		if (priceFilter != null) {
			if (priceFilter.equals("desc")) {
				book = bookService.findByPriceDesc();
			} else if (priceFilter.equals("asc")) {
				book = bookService.findByPriceAsc();
			}
		}else if (releasedDateFilter != null ) {
			if ( releasedDateFilter.equals("desc")){
				book = bookService.findByReleasedDateDesc();
			}
		}
		else {
			book = bookService.findAll();
		}
		System.out.println(book);
		session.setAttribute("books", book);
		
		
		
		return"books/booklist";
	}

	@GetMapping("/list")

	public String findall(ModelMap modelMap) {
		List<Book> findAll = bookService.findAll();
		modelMap.addAttribute("BOOK_SALES", findAll);
		return "books/booklist";
	}

	@GetMapping("/book")

	public String findallbook(ModelMap modelMap) {
		List<Book> findAll = bookService.findAll();
		modelMap.addAttribute("BOOK_SALES", findAll);
		return "books/bookdetail";
	}

	@GetMapping("/{id}")

	public String view(@PathVariable("id") Long id, ModelMap modelMap, HttpSession session) {
		System.out.println("ShowBook:" + id);

		Book book = bookService.findOne(id);
		session.setAttribute("book", book);
		modelMap.addAttribute("BOOK_ORDER", book);

		return "order/view";

	}

}
