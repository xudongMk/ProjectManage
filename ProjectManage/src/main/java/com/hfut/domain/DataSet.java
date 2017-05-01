package com.hfut.domain;
/**
 * DataSet
 * @author xudong
 * @time 2016-12-11
 */
public class DataSet {

	private int dataset_id;
	private long uid;
	private String username;
	private String publish_time;
	private String publish_institution;
	private String dataset_name;
	private String dataset_introduction;
	private String dataset_field;
	private String dataset_format;
	private String dataset_link;
	private String dataset_source;
	private String dataset_tag;
	private String img_id;
	private int status;
		
	public DataSet(String username, String publish_time, String dataset_name,
			String dataset_introduction, String dataset_field,
			String dataset_format, String dataset_link, String dataset_source,
			String dataset_tag, String img_id) {
		this.username = username;
		this.publish_time = publish_time;
		this.dataset_name = dataset_name;
		this.dataset_introduction = dataset_introduction;
		this.dataset_field = dataset_field;
		this.dataset_format = dataset_format;
		this.dataset_link = dataset_link;
		this.dataset_source = dataset_source;
		this.dataset_tag = dataset_tag;
		this.img_id = img_id;
	}
	public DataSet() {
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
	public String getDataset_source() {
		return dataset_source;
	}
	public void setDataset_source(String dataset_source) {
		this.dataset_source = dataset_source;
	}
	public String getDataset_tag() {
		return dataset_tag;
	}
	public void setDataset_tag(String dataset_tag) {
		this.dataset_tag = dataset_tag;
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
	public int getDataset_id() {
		return dataset_id;
	}
	public void setDataset_id(int dataset_id) {
		this.dataset_id = dataset_id;
	}
	public String getDataset_name() {
		return dataset_name;
	}
	public void setDataset_name(String dataset_name) {
		this.dataset_name = dataset_name;
	}
	public String getDataset_introduction() {
		return dataset_introduction;
	}
	public void setDataset_introduction(String dataset_introduction) {
		this.dataset_introduction = dataset_introduction;
	}
	public String getDataset_field() {
		return dataset_field;
	}
	public void setDataset_field(String dataset_field) {
		this.dataset_field = dataset_field;
	}
	public String getDataset_format() {
		return dataset_format;
	}
	public void setDataset_format(String dataset_format) {
		this.dataset_format = dataset_format;
	}
	public String getDataset_link() {
		return dataset_link;
	}
	public void setDataset_link(String dataset_link) {
		this.dataset_link = dataset_link;
	}
}
