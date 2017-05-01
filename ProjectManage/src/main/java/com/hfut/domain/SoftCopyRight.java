package com.hfut.domain;

public class SoftCopyRight {

	private int softcopyright_id;
	private String softcopyright_name;
	private String softcopyright_introduction;
	private String softcopyright_author;
	private String softcopyright_date;
	private String softcopyright_status;
	private String softcopyright_link;
	private String img_id;
	private int special;
	private long uid;
	private String username;
	private String publish_time;
    private int status;
	
	public SoftCopyRight(String softcopyright_name,
			String softcopyright_introduction, String softcopyright_author,
			String softcopyright_date, String softcopyright_status,
			String softcopyright_link, String username, String publish_time,int special,String img_id) {
		super();
		this.softcopyright_name = softcopyright_name;
		this.softcopyright_introduction = softcopyright_introduction;
		this.softcopyright_author = softcopyright_author;
		this.softcopyright_date = softcopyright_date;
		this.softcopyright_status = softcopyright_status;
		this.softcopyright_link = softcopyright_link;
		this.username = username;
		this.publish_time = publish_time;
		this.special=special;
		this.img_id=img_id;
	}
	
	public SoftCopyRight() {
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

	public int getSoftcopyright_id() {
		return softcopyright_id;
	}
	public void setSoftcopyright_id(int softcopyright_id) {
		this.softcopyright_id = softcopyright_id;
	}
	public String getSoftcopyright_name() {
		return softcopyright_name;
	}
	public void setSoftcopyright_name(String softcopyright_name) {
		this.softcopyright_name = softcopyright_name;
	}
	public String getSoftcopyright_introduction() {
		return softcopyright_introduction;
	}
	public void setSoftcopyright_introduction(String softcopyright_introduction) {
		this.softcopyright_introduction = softcopyright_introduction;
	}
	public String getSoftcopyright_author() {
		return softcopyright_author;
	}
	public void setSoftcopyright_author(String softcopyright_author) {
		this.softcopyright_author = softcopyright_author;
	}
	public String getSoftcopyright_date() {
		return softcopyright_date;
	}
	public void setSoftcopyright_date(String softcopyright_date) {
		this.softcopyright_date = softcopyright_date;
	}
	public String getSoftcopyright_status() {
		return softcopyright_status;
	}
	public void setSoftcopyright_status(String softcopyright_status) {
		this.softcopyright_status = softcopyright_status;
	}
	public String getSoftcopyright_link() {
		return softcopyright_link;
	}
	public void setSoftcopyright_link(String softcopyright_link) {
		this.softcopyright_link = softcopyright_link;
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
