package com.hfut.domain;

public class Patent {

	private int patent_id;
	private String patent_name;
	private String patent_introduction;
	private String patent_author;
	private String patent_date;
	private String patent_status;
	private String patent_link;
	private String img_id;
	private int special;
	private int status;
	private long uid;
	private String username;
	private String publish_time;
	
	public Patent(String patent_name, String patent_introduction,
			String patent_author, String patent_date, String patent_status,
			String patent_link, String username, String publish_time,int special,String img_id) {
		super();
		this.patent_name = patent_name;
		this.patent_introduction = patent_introduction;
		this.patent_author = patent_author;
		this.patent_date = patent_date;
		this.patent_status = patent_status;
		this.patent_link = patent_link;
		this.username = username;
		this.publish_time = publish_time;
		this.special=special;
		this.img_id=img_id;
	}
		
	public Patent() {
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


	public int getPatent_id() {
		return patent_id;
	}
	public void setPatent_id(int patent_id) {
		this.patent_id = patent_id;
	}
	public String getPatent_name() {
		return patent_name;
	}
	public void setPatent_name(String patent_name) {
		this.patent_name = patent_name;
	}
	public String getPatent_introduction() {
		return patent_introduction;
	}
	public void setPatent_introduction(String patent_introduction) {
		this.patent_introduction = patent_introduction;
	}
	public String getPatent_author() {
		return patent_author;
	}
	public void setPatent_author(String patent_author) {
		this.patent_author = patent_author;
	}
	public String getPatent_date() {
		return patent_date;
	}
	public void setPatent_date(String patent_date) {
		this.patent_date = patent_date;
	}
	public String getPatent_status() {
		return patent_status;
	}
	public void setPatent_status(String patent_status) {
		this.patent_status = patent_status;
	}
	public String getPatent_link() {
		return patent_link;
	}
	public void setPatent_link(String patent_link) {
		this.patent_link = patent_link;
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
