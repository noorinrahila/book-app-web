package com.book.bookapp.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.book.bookapp.model.Order;
import com.book.bookapp.repository.OrderItemRepository;
import com.book.bookapp.repository.OrderRepository;


@Service
public class OrderService {

	
	@Autowired
	private OrderRepository orderRepo;


	public void save(Order order) {
		orderRepo.save(order);
		
	}
	
	public List<Order> findOrderByUserId(Integer userId)
	{
		return orderRepo.findOrderByUserId(userId);
	}
	
	public Order findOne(Long id)
	{
		return orderRepo.findOne(id);
	}

	
}
