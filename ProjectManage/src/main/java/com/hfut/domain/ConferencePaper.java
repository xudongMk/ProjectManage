package com.hfut.domain;


public class ConferencePaper {

	private int paper_id;
	private String paper_name;
	private String paper_introduction;
	private String paper_author;
	private String paper_publishers;
	private String paper_date;
	private String paper_status;
	private String paper_link;
	private long uid;
	private String username;
	private String publish_time;
	private int special;
	private String img_id;
	private int status;
	
	public ConferencePaper(String paper_name, String paper_introduction,
			String paper_author, String paper_publishers, String paper_date,
			String paper_status, String paper_link, String username,
			String publish_time,int special,String img_id) {

		this.paper_name = paper_name;
		this.paper_introduction = paper_introduction;
		this.paper_author = paper_author;
		this.paper_publishers = paper_publishers;
		this.paper_date = paper_date;
		this.paper_status = paper_status;
		this.paper_link = paper_link;
		this.username = username;
		this.publish_time = publish_time;
		this.special=special;
		this.img_id=img_id;
	}
	public ConferencePaper() {
		super();
	}
	
	public int getSpecial() {
		return special;
	}
	public void setSpecial(int special) {
		this.special = special;
	}
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getImg_id() {
		return img_id;
	}

	public void setImg_id(String img_id) {
		this.img_id = img_id;
	}

	public int getPaper_id() {
		return paper_id;
	}
	public void setPaper_id(int paper_id) {
		this.paper_id = paper_id;
	}
	public String getPaper_name() {
		return paper_name;
	}
	public void setPaper_name(String paper_name) {
		this.paper_name = paper_name;
	}
	public String getPaper_introduction() {
		return paper_introduction;
	}
	public void setPaper_introduction(String paper_introduction) {
		this.paper_introduction = paper_introduction;
	}
	public String getPaper_author() {
		return paper_author;
	}
	public void setPaper_author(String paper_author) {
		this.paper_author = paper_author;
	}
	public String getPaper_publishers() {
		return paper_publishers;
	}
	public void setPaper_publishers(String paper_publishers) {
		this.paper_publishers = paper_publishers;
	}
	public String getPaper_date() {
		return paper_date;
	}
	public void setPaper_date(String paper_date) {
		this.paper_date = paper_date;
	}
	public String getPaper_status() {
		return paper_status;
	}
	public void setPaper_status(String paper_status) {
		this.paper_status = paper_status;
	}
	public String getPaper_link() {
		return paper_link;
	}
	public void setPaper_link(String paper_link) {
		this.paper_link = paper_link;
	}
	public long getUid() {
		return uid;
	}
	public void setUid(long uid) {
		this.uid = uid;
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
	
}
