package com.hfut.domain;
/**
 * Algorithm
 * @author xudong
 * @time 2016-12-11
 */
public class Algorithm {

	private int algorithm_id;
	private long uid;
	private String username;
	private String publish_time;
	private String publish_institution;//其他的实体类的机构字段
	private String algorithm_name;
	private String algorithm_introduction;
	private String algorithm_author;
	private String algorithm_reletedpaper;
	private String algorithm_releteddataset;
	private String algorithm_link;
	private String img_id;
	private int status;
		
	public Algorithm(String username, String publish_time, String algorithm_name,
			String algorithm_introduction, String algorithm_author,
			String algorithm_reletedpaper, String algorithm_releteddataset,
			String algorithm_link, String img_id) {
		this.username = username;
		this.publish_time = publish_time;
		this.algorithm_name = algorithm_name;
		this.algorithm_introduction = algorithm_introduction;
		this.algorithm_author = algorithm_author;
		this.algorithm_reletedpaper = algorithm_reletedpaper;
		this.algorithm_releteddataset = algorithm_releteddataset;
		this.algorithm_link = algorithm_link;
		this.img_id = img_id;
	}

	public Algorithm() {
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
	public int getAlgorithm_id() {
		return algorithm_id;
	}
	public void setAlgorithm_id(int algorithm_id) {
		this.algorithm_id = algorithm_id;
	}
	public String getAlgorithm_introduction() {
		return algorithm_introduction;
	}
	public void setAlgorithm_introduction(String algorithm_introduction) {
		this.algorithm_introduction = algorithm_introduction;
	}
	public String getAlgorithm_author() {
		return algorithm_author;
	}
	public void setAlgorithm_author(String algorithm_author) {
		this.algorithm_author = algorithm_author;
	}
	public String getAlgorithm_reletedpaper() {
		return algorithm_reletedpaper;
	}
	public void setAlgorithm_reletedpaper(String algorithm_reletedpaper) {
		this.algorithm_reletedpaper = algorithm_reletedpaper;
	}
	public String getAlgorithm_name() {
		return algorithm_name;
	}
	public void setAlgorithm_name(String algorithm_name) {
		this.algorithm_name = algorithm_name;
	}
	public String getAlgorithm_releteddataset() {
		return algorithm_releteddataset;
	}
	public void setAlgorithm_releteddataset(String algorithm_releteddataset) {
		this.algorithm_releteddataset = algorithm_releteddataset;
	}
	public String getAlgorithm_link() {
		return algorithm_link;
	}
	public void setAlgorithm_link(String algorithm_link) {
		this.algorithm_link = algorithm_link;
	}
}
