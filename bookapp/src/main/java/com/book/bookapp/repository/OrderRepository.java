package com.book.bookapp.repository;







import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.book.bookapp.model.Order;


public interface OrderRepository extends JpaRepository<Order,Long> {


	public List<Order> findOrderByUserId(Integer userId);

	
	
}
