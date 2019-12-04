package com.app.bean;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name="Orders")
public class OrderDetails {
	
	@Id
	@GeneratedValue()
	int order_id;
	
    String cust_name;
    long phone_number;
    String address;
    int date;
    int quantity;
    @OneToOne(fetch=FetchType.LAZY)
    @JoinColumn(name="book_id",referencedColumnName="book_id")
    Book book_id;

	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public String getCust_name() {
		return cust_name;
	}

	public void setCust_name(String cust_name) {
		this.cust_name = cust_name;
	}

	public long getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(long phone_number) {
		this.phone_number = phone_number;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public int getDate() {
		return date;
	}

	public void setDate(int date) {
		this.date = date;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public Book getBook_id() {
		return this.book_id;
	}

	public void setBook_id(Book book_id) {
		this.book_id = book_id;
	}
	
	

}
