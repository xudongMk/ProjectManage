package com.hfut.service;

import java.util.List;

import com.hfut.domain.Conference;
import com.hfut.domain.PageNum;
import com.hfut.domain.Seminar;

public interface ProjectConmunicationService {
	
	public int addSeminar(Seminar seminar);
	public int addMeeting(Conference meeting);
	
	public boolean deleteSeminar(int seminar_id);
	public boolean deleteMeeting(int meeting_id);
	
	public List<Seminar> getAllSeminar();
	public List<Conference> getAllMeeting();
	
	public List<Seminar> getSeminarByUsername(String username);
	public List<Conference> getAllMeetingByUsername(String username);
	
	public Conference getConferenceDetails(int id);
	public Seminar getSeminarDetails(int id);
	
	public Conference getConferenceNew();
	public List<Seminar> getSeminarNew();
	
	public List<Seminar> getSeminarByPage(int page_id);
	public List<Conference> getMeetingByPage(int page_id);
	
	//根据研讨会举办的地点查询和会议的等级以及根据时间来查询
	public List<Seminar> getSeminarByLocation(String location,int page);
	public List<Conference> getConferenceByLevel(String level,int page); 
	
	public List<Seminar> getSeminarByDate(String date);
	public List<Conference> getConferenceByDate(String date);
	
	public PageNum getPage(String type,String showtype);
}
