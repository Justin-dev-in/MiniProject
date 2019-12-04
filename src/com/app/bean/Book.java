package com.app.bean;


import java.awt.image.BufferedImage;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.hibernate.type.BlobType;

@Entity
@Table(name="books")
public class Book {

	@Id
	@Column(name="book_id")
	int book_id;
	@Column(name="book_name")
	String book_name;
	@Column(name="author")
	String author;
	@Column(name="price")
	float price;
	@Column(name="genre")
	String  genre;
	public int getBook_id() {
		return book_id;
	}
	public void setBook_id(int book_id) {
		this.book_id = book_id;
	}
	public String getBook_name() {
		return book_name;
	}
	public void setBook_name(String book_name) {
		this.book_name = book_name;
	}
	public String getAuthor() {
		return author;
	}
	public void setAuthor(String author) {
		this.author = author;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getGenre() {
		return genre;
	}
	public void setGenre(String genre) {
		this.genre = genre;
	}
	@Override
	public String toString() {
		return "Book [book_id=" + book_id + ", book_name=" + book_name + ", author=" + author + ", price=" + price
				+ ", genre=" + genre + "]";
	}
	
	
	
	
}
