package com.hfut.domain;

public class Award {

	private int award_id;
	private String award_name;
	private String award_type;
	private String award_staff;
	private String award_time;
	private String award_introduction;
	private long uid;
	private String username;
	private String publish_time;
	private int special;
	private String img_id;
	private int status;
	
	public Award(String username,String publish_time,String award_name, String award_type, String award_staff,
			String award_time, String award_introduction,int special, String img_id) {
		this.username=username;
		this.publish_time=publish_time;
		this.award_name = award_name;
		this.award_type = award_type;
		this.award_staff = award_staff;
		this.award_time = award_time;
		this.award_introduction = award_introduction;
		this.special=special;
		this.img_id = img_id;
	}
	public Award() {
	}

	public int getSpecial() {
		return special;
	}
	public void setSpecial(int special) {
		this.special = special;
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
	public int getAward_id() {
		return award_id;
	}
	public void setAward_id(int award_id) {
		this.award_id = award_id;
	}
	public String getAward_name() {
		return award_name;
	}
	public void setAward_name(String award_name) {
		this.award_name = award_name;
	}
	public String getAward_type() {
		return award_type;
	}
	public void setAward_type(String award_type) {
		this.award_type = award_type;
	}
	public String getAward_staff() {
		return award_staff;
	}
	public void setAward_staff(String award_staff) {
		this.award_staff = award_staff;
	}
	public String getAward_time() {
		return award_time;
	}
	public void setAward_time(String award_time) {
		this.award_time = award_time;
	}
	public String getAward_introduction() {
		return award_introduction;
	}
	public void setAward_introduction(String award_introduction) {
		this.award_introduction = award_introduction;
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
