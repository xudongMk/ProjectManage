package com.hfut.dao;

import java.util.List;

import com.hfut.domain.Conference;
import com.hfut.domain.PageNum;
import com.hfut.domain.Seminar;

public interface ProjectConmunicationDao {

	public int addMeeting(Conference meeting);
	public int addSeminar(Seminar seminar);
	
	public boolean deleteMeeting(int meeting_id);
	public boolean deleteSeminar(int seminar_id);
	
	public List<Conference> getAllMeeting();
	public List<Seminar> getAllSeminar();
	
	public List<Seminar> getSeminarByUsername(String username);
	public List<Conference> getMeetingByUsername(String username);
	
	public Conference getConferenceById(int id);
	public Seminar getSeminarById(int id);
	//首页的topN
	public Conference getConferenceNew();
	public List<Seminar> getSeminarNew();
	
	public List<Seminar> getSeminarByPage(int page_id);
	public List<Conference> getMeetingByPage(int page_id);
	
	//根据研讨会举办的地点查询和会议的等级以及根据时间来查询
	public List<Seminar> getSeminarByLocation(String location,int page);
	public List<Conference> getConferenceByLevel(String level,int page); 
	
	public List<Seminar> getSeminarByDate(String date);
	public List<Conference> getConferenceByDate(String date);
	
	public PageNum getConferencePageAll();
	public PageNum getConferencePage(String type);
	public PageNum getSeminarPageAll();
	public PageNum getSeminarPage(String type);
	
}
