package com.hfut.domain;


/**
 * meeting
 * @author xudong
 * @time 2016-12-11
 */
public class Conference {

	private int conference_id;
	private long uid;
	private String username;
	private String publish_time;
	private String publish_institution;
	private String conference_name;
	private String conference_introduction;
	private String conference_date;
	private String conference_level;
	private String conference_location;
	private String conference_crew;
	private String img_id;
	private int status;
	
	public Conference(String username, String publish_time, String conference_name,
			String conference_date, String conference_level,
			String conference_location, String conference_crew, String img_id) {
		super();
		this.username = username;
		this.publish_time = publish_time;
		this.conference_name = conference_name;
		this.conference_date = conference_date;
		this.conference_level = conference_level;
		this.conference_location = conference_location;
		this.conference_crew = conference_crew;
		this.img_id = img_id;
	}
	public Conference() {
		super();
	}
	
	public int getStatus() {
		return status;
	}
	public void setStatus(int status) {
		this.status = status;
	}
	public String getConference_introduction() {
		return conference_introduction;
	}
	public void setConference_introduction(String conference_introduction) {
		this.conference_introduction = conference_introduction;
	}
	public String getImg_id() {
		return img_id;
	}
	public void setImg_id(String img_id) {
		this.img_id = img_id;
	}
	public int getConference_id() {
		return conference_id;
	}
	public void setConference_id(int conference_id) {
		this.conference_id = conference_id;
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
	public String getPublish_institution() {
		return publish_institution;
	}
	public void setPublish_institution(String publish_institution) {
		this.publish_institution = publish_institution;
	}
	public String getConference_name() {
		return conference_name;
	}
	public void setConference_name(String conference_name) {
		this.conference_name = conference_name;
	}
	public String getConference_date() {
		return conference_date;
	}
	public void setConference_date(String conference_date) {
		this.conference_date = conference_date;
	}
	public String getConference_level() {
		return conference_level;
	}
	public void setConference_level(String conference_level) {
		this.conference_level = conference_level;
	}
	public String getConference_location() {
		return conference_location;
	}
	public void setConference_location(String conference_location) {
		this.conference_location = conference_location;
	}
	public String getConference_crew() {
		return conference_crew;
	}
	public void setConference_crew(String conference_crew) {
		this.conference_crew = conference_crew;
	}
	
}
