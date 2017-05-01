package com.hfut.domain;

public class Student {

	private int student_id;
	private String student_name;
	private String student_type;
	private String student_begintime;
	private String student_endtime;
	private String student_field;
	private String student_introduction;
	private long uid;
	private String username;
	private String publish_time;
	private String img_id;
	private int status;
	
	public Student(String username,String publish_time,String student_name, String student_type,
			String student_begintime, String student_endtime,
			String student_field, String student_introduction, String img_id) {
		this.username=username;
		this.publish_time=publish_time;
		this.student_name = student_name;
		this.student_type = student_type;
		this.student_begintime = student_begintime;
		this.student_endtime = student_endtime;
		this.student_field = student_field;
		this.student_introduction = student_introduction;
		this.img_id = img_id;
	}	
	public Student() {
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
	public int getStudent_id() {
		return student_id;
	}
	public void setStudent_id(int student_id) {
		this.student_id = student_id;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public String getStudent_type() {
		return student_type;
	}
	public void setStudent_type(String student_type) {
		this.student_type = student_type;
	}
	public String getStudent_begintime() {
		return student_begintime;
	}
	public void setStudent_begintime(String student_begintime) {
		this.student_begintime = student_begintime;
	}
	public String getStudent_endtime() {
		return student_endtime;
	}
	public void setStudent_endtime(String student_endtime) {
		this.student_endtime = student_endtime;
	}
	public String getStudent_field() {
		return student_field;
	}
	public void setStudent_field(String student_field) {
		this.student_field = student_field;
	}
	public String getStudent_introduction() {
		return student_introduction;
	}
	public void setStudent_introduction(String student_introduction) {
		this.student_introduction = student_introduction;
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
