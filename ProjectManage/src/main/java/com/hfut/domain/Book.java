package com.hfut.domain;

public class Book {

	private int book_id;
	private String book_name;
	private String book_author;
	private String book_time;
	private String book_publish;
	private String book_introduction;
	private String username;
	private String publish_time;
	private int special;
	private String img_id;
	private int status;	
	
	public Book(String username,String publish_time,String book_name, String book_author, String book_time,
			String book_publish, String book_introduction,int special, String img_id) {
		this.username=username;
		this.publish_time=publish_time;
		this.book_name = book_name;
		this.book_author = book_author;
		this.book_time = book_time;
		this.book_publish = book_publish;
		this.book_introduction = book_introduction;
		this.special=special;
		this.img_id = img_id;
	}
	
	public Book() {
	}

	public int getSpecial() {
		return special;
	}

	public void setSpecial(int special) {
		this.special = special;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPublish_time() {
		return publish_time;
	}

	public void setPublish_time(String publish_time) {
		this.publish_time = publish_time;
	}

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
	public String getBook_author() {
		return book_author;
	}
	public void setBook_author(String book_author) {
		this.book_author = book_author;
	}
	public String getBook_time() {
		return book_time;
	}
	public void setBook_time(String book_time) {
		this.book_time = book_time;
	}
	public String getBook_publish() {
		return book_publish;
	}
	public void setBook_publish(String book_publish) {
		this.book_publish = book_publish;
	}
	public String getBook_introduction() {
		return book_introduction;
	}
	public void setBook_introduction(String book_introduction) {
		this.book_introduction = book_introduction;
	}
	public String getImg_id() {
		return img_id;
	}
	public void setImg_id(String img_id) {
		this.img_id = img_id;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}

}
