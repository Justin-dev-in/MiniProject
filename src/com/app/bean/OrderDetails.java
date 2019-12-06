package com.app.bean;

import java.io.Serializable;
import java.sql.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.PrimaryKeyJoinColumn;
import javax.persistence.Table;

import org.hibernate.annotations.*;

@Entity
@Table(name="OrdersF")
public class OrderDetails  implements Serializable{
	

	
	@Id
	int order_id;
	
    String cust_name;
    long phone_number;
    String address;
    String date;
    int quantity;
    long mobile;
    float total;
    String name;
    
    public float getTotal() {
		return total;
	}

	public void setTotal(float total) {
		this.total = total;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public long getMobile() {
		return mobile;
	}

	public void setMobile(long mobile) {
		this.mobile = mobile;
	}

	
	//@Id
    @GenericGenerator(name="gen",strategy="foreign" , parameters=@Parameter(name="Property",value="book"))
    int book_id;
    
    @OneToOne
    @PrimaryKeyJoinColumn
    Book book;
   


	public int getOrder_id() {
		return order_id;
	}

	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}

	public Book getBook() {
		return book;
	}

	public void setBook(Book book) {
		this.book = book;
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

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}

	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}

	public int getBook_id() {
		return book_id;
	}

	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}

	@Override
	public String toString() {
		return "OrderDetails [order_id=" + order_id + ", cust_name=" + cust_name + ", phone_number=" + phone_number
				+ ", address=" + address + ", date=" + date + ", quantity=" + quantity + ", mobile=" + mobile
				+ ", book_id=" + book_id + ", book=" + book + "]";
	}

	
	

}
