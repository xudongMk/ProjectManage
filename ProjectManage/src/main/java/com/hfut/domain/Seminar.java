package com.hfut.domain;

/**
 * seminar
 * @author xudong
 * @time 2016-12-11
 */
public class Seminar {

	private int seminar_id;
	private long uid;
	private String username;
	private String publish_time;
	private String publish_institution;
	private String seminar_title;
	private String seminar_date;
	private String seminar_location;
	private String seminar_content;
	private String seminar_crew;
	private String img_id;
	private int status;
	
	public Seminar(String username, String publish_time, String seminar_title,
			String seminar_date, String seminar_location,
			String seminar_content, String seminar_crew, String img_id) {
		this.username = username;
		this.publish_time = publish_time;
		this.seminar_title = seminar_title;
		this.seminar_date = seminar_date;
		this.seminar_location = seminar_location;
		this.seminar_content = seminar_content;
		this.seminar_crew = seminar_crew;
		this.img_id = img_id;
	}
	public Seminar() {
		super();
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public long getUid() {
		return uid;
	}
	public void setUid(long uid) {
		this.uid = uid;
	}
	public String getPublish_time() {
		return publish_time;
	}
	public void setPublish_time(String publish_time) {
		this.publish_time = publish_time;
	}
	public String getPublish_institution() {
		return publish_institution;
	}
	public void setPublish_institution(String publish_institution) {
		this.publish_institution = publish_institution;
	}
	public int getSeminar_id() {
		return seminar_id;
	}
	public void setSeminar_id(int seminar_id) {
		this.seminar_id = seminar_id;
	}
	public String getSeminar_title() {
		return seminar_title;
	}
	public void setSeminar_title(String seminar_title) {
		this.seminar_title = seminar_title;
	}

	public String getSeminar_date() {
		return seminar_date;
	}
	public void setSeminar_date(String seminar_date) {
		this.seminar_date = seminar_date;
	}
	public String getSeminar_location() {
		return seminar_location;
	}
	public void setSeminar_location(String seminar_location) {
		this.seminar_location = seminar_location;
	}
	public String getSeminar_content() {
		return seminar_content;
	}
	public void setSeminar_content(String seminar_content) {
		this.seminar_content = seminar_content;
	}
	public String getSeminar_crew() {
		return seminar_crew;
	}
	public void setSeminar_crew(String seminar_crew) {
		this.seminar_crew = seminar_crew;
	}
}
