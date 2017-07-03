package com.book.bookapp.controller;

import java.util.List;
import java.util.ArrayList;


import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.book.bookapp.model.Book;
import com.book.bookapp.model.Order;
import com.book.bookapp.model.OrderItem;
import com.book.bookapp.model.User;
import com.book.bookapp.service.BookService;


@Controller
@RequestMapping("/orderItems")
public class OrderItemController {

	@Autowired
	BookService bookService;

	@PostMapping("/addToCart")

	public String addToCart(@RequestParam("book_id") Long id, @RequestParam("qty") Integer qty, HttpSession session,
			ModelMap modelMap) {

		User user = (User) session.getAttribute("user");

		Order order = (Order) session.getAttribute("MY_CART");

		if (order == null) {
			order = new Order();
			order.setUser(user);
			order.setTotalPrice(0);
			order.setStatus("ORDERED");
		}

		List<OrderItem> orderItems=order.getOrderItems();

		boolean isItemExists = false;
		for (OrderItem item : orderItems) {

			if (item.getBook().getId().equals(id)) {
				int totalQuantity = item.getQuantity() + qty;
				item.setQuantity(totalQuantity);
				isItemExists = true;
			}
		}

		if (!isItemExists) {

			OrderItem orderItem = new OrderItem();
			orderItem.setOrder(order);

			Book book = bookService.findOne(id);
			orderItem.setBook(book);
			orderItem.setQuantity(qty);
			orderItems.add(orderItem);
			session.setAttribute("MY_ORDERITEMS", orderItems);

		}

		order.setOrderItems(orderItems);

		session.setAttribute("MY_CART", order);


		
		return "order/cartitem";
	}

}
