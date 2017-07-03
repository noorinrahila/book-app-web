package com.book.bookapp.repository;







import org.springframework.data.jpa.repository.JpaRepository;

import com.book.bookapp.model.OrderItem;






public interface OrderItemRepository extends JpaRepository<OrderItem,Long> {



	
	
}