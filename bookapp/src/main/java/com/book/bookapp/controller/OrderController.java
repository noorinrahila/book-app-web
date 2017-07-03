package com.book.bookapp.controller;

import java.time.LocalDate;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.book.bookapp.model.Order;
import com.book.bookapp.model.OrderItem;
import com.book.bookapp.model.User;
import com.book.bookapp.repository.OrderRepository;
import com.book.bookapp.service.OrderService;

import ch.qos.logback.core.net.SyslogOutputStream;


@Controller
@RequestMapping("/order")
public class OrderController {
	@Autowired
	OrderRepository orderRepo;

	@Autowired
	OrderService orderservice;
	
	@GetMapping("/myorders")
	
	public String myorders(ModelMap modelMap,HttpSession session)
	{
		User user= (User) session.getAttribute("user");
		List<Order> list= orderservice.findOrderByUserId(user.getId());
		session.setAttribute("MY_ORDERS", "list");
		modelMap.addAttribute("MY_ORDERS", list);
		return "order/MyOrders";
	}
	
	@GetMapping("/myorderedlist")
	public String myorderedlist(ModelMap modelMap,HttpSession session) {
		User user= (User) session.getAttribute("user");

		List<Order> list= orderservice.findOrderByUserId(user.getId());
		session.setAttribute("MY_ORDERS", "list");
		modelMap.addAttribute("MY_ORDERS", list);
			return "order/MyOrderedList";

			
		}
		
	@GetMapping("/mycancelledlist")
	public String mycancelledlist(ModelMap modelMap,HttpSession session) {
		User user= (User) session.getAttribute("user");

		List<Order> list= orderservice.findOrderByUserId(user.getId());
		session.setAttribute("MY_ORDERS", "list");
		modelMap.addAttribute("MY_ORDERS", list);
			return "order/MyCancelledList";

			
		}
	
	



	@GetMapping("/remove")
	public String remove(@RequestParam("id") Integer id, HttpSession session, ModelMap modelMap) {
		
		Order order = (Order) session.getAttribute("MY_CART");

		if (order != null && order.getOrderItems().size() > 0) {
			List<OrderItem> orderItems = order.getOrderItems();
			OrderItem itemSelected = orderItems.get(id);
			orderItems.remove(itemSelected);
			order.setOrderItems(orderItems);
			session.setAttribute("MY_CART", order);
		}

		

		
		return "order/cartitem";

	}

	@PostMapping("/save")
	public String save(@RequestParam("total_amount") Integer totalAmount, HttpSession session) {

		Order orderInsideCart = (Order) session.getAttribute("MY_CART");
		if ( orderInsideCart != null && orderInsideCart.getOrderItems().size() > 0) {
			orderInsideCart.setTotalPrice(totalAmount);
			orderservice.save(orderInsideCart);
			session.removeAttribute("MY_CART");			
		}
				
		return "redirect:../order/myorders";
		
		
	}

	@GetMapping("/updateStatus")
	public String updateStatus(@RequestParam("id") Long orderId , @RequestParam("status")String status ) {
		Order order = orderservice.findOne(orderId);
		if ("CANCELLED".equals(status) ) {
			order.setCancelledDate(LocalDate.now());
		}
		else if ("DELIVERED".equals(status)) {
			order.setDeliveredDate(LocalDate.now());
		}
		
		order.setStatus(status);
		orderservice.save(order);	
		return "redirect:../order/myorders";
	}
}
