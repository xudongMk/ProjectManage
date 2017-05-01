package com.hfut.serviceImp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hfut.dao.ProjectConmunicationDao;
import com.hfut.domain.Conference;
import com.hfut.domain.PageNum;
import com.hfut.domain.Seminar;
import com.hfut.service.ProjectConmunicationService;

@Service("projectConmunicationService")
public class ProjectConmunicationServiceImpl implements ProjectConmunicationService{

	@Resource
	private ProjectConmunicationDao projectConmDao;
	
	int page;
	
	public int addSeminar(Seminar seminar) {
		return projectConmDao.addSeminar(seminar);
	}

	public int addMeeting(Conference meeting) {
		return projectConmDao.addMeeting(meeting);
	}

	public boolean deleteSeminar(int seminar_id) {
		return projectConmDao.deleteSeminar(seminar_id);
	}

	public boolean deleteMeeting(int meeting_id) {
		return projectConmDao.deleteMeeting(meeting_id);
	}

	public List<Seminar> getAllSeminar() {
		return projectConmDao.getAllSeminar();
	}

	public List<Conference> getAllMeeting() {
		return projectConmDao.getAllMeeting();
	}

	public List<Seminar> getSeminarByUsername(String username) {
		return projectConmDao.getSeminarByUsername(username);
	}

	public List<Conference> getAllMeetingByUsername(String username) {
		return projectConmDao.getMeetingByUsername(username);
	}

	@Override
	public Conference getConferenceDetails(int id) {
		return projectConmDao.getConferenceById(id);
	}

	@Override
	public Seminar getSeminarDetails(int id) {
		return projectConmDao.getSeminarById(id);
	}

	@Override
	public Conference getConferenceNew() {
		return projectConmDao.getConferenceNew();
	}

	@Override
	public List<Seminar> getSeminarNew() {
		return projectConmDao.getSeminarNew();
	}

	@Override
	public List<Seminar> getSeminarByPage(int page_id) {
		if(page_id==1){
			page=page_id-1;
			return projectConmDao.getSeminarByPage(page);
		}else{
			page=(page_id-1)*10;
			return projectConmDao.getSeminarByPage(page);	
		}
	}

	@Override
	public List<Conference> getMeetingByPage(int page_id) {		
		if(page_id==1){
			page=page_id-1;
			return projectConmDao.getMeetingByPage(page);
		}else{
			page=(page_id-1)*10;
			return projectConmDao.getMeetingByPage(page);	
		}
	}

	@Override
	public List<Seminar> getSeminarByLocation(String location,int page_id) {
		String time=location+"%";
		if(page_id==1){
			page=page_id-1;			
		}else{
			page=(page_id-1)*10;			
		}
		return projectConmDao.getSeminarByLocation(time,page);	
	}

	@Override
	public List<Conference> getConferenceByLevel(String level,int page_id) {	
		String time=level+"%";
		if(page_id==1){
			page=page_id-1;			
		}else{
			page=(page_id-1)*10;			
		}
		return projectConmDao.getConferenceByLevel(time,page);	
	}

	@Override
	public List<Seminar> getSeminarByDate(String date) {
		return projectConmDao.getSeminarByDate(date);
	}

	@Override
	public List<Conference> getConferenceByDate(String date) {
		return projectConmDao.getConferenceByDate(date);
	}

	@Override
	public PageNum getPage(String type,String showtype) {
		if(showtype.equals("conferenceshow")){
			if(type.equals("all")){
				return projectConmDao.getConferencePageAll();
			}else{
				return projectConmDao.getConferencePage(type);	
			}
		}else{
			if(type.equals("all")){
				return projectConmDao.getSeminarPageAll();
			}else{
				return projectConmDao.getConferencePage(type);
			}
		}
		
	}

}
