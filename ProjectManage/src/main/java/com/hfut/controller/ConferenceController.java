package com.hfut.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.hfut.domain.Conference;
import com.hfut.domain.PageNum;
import com.hfut.service.ProjectConmunicationService;
import com.hfut.utils.SpringSecurityUtil;
import com.hfut.utils.Toolutils;

@Controller
public class ConferenceController {

	@Resource
	private ProjectConmunicationService projectComnService;
	
	/********会议信息*******/
	@RequestMapping(value="/conferenceManagement")
	public ModelAndView conferenceManagement(){		
		ModelAndView mav = new ModelAndView();
		String username = SpringSecurityUtil.getUsername();
		List<Conference> conferenceList=projectComnService.getAllMeetingByUsername(username);
		mav.addObject("list", conferenceList);
		mav.setViewName("admin/conferenceManagement");
		return mav;
	}
	
	@RequestMapping(value="/conferenceshow")
	public ModelAndView conferencehow(){		
		ModelAndView mav = new ModelAndView();
		List<Conference> conferenceList=projectComnService.getAllMeeting();		
		mav.addObject("list", conferenceList);
		mav.setViewName("conferenceShow");
		return mav;
	}
	/**根据具体的会议等级**/
/*	@RequestMapping(value="/conferenceshow/level/{type}")
	public ModelAndView conferenceshowBylevel(@PathVariable String type,ModelAndView mav) throws UnsupportedEncodingException{
		List<Conference> conferenceList=projectComnService.getConferenceByLevel(new String(type.getBytes("ISO-8859-1"),"UTF-8"));
		mav.addObject("list", conferenceList);
		mav.setViewName("conferenceShow");
		return mav;
	}*/
	@RequestMapping(value="/conferenceshow/{type}/{page}")
	public ModelAndView conferenceshowBypage(@PathVariable String type,@PathVariable int page,ModelAndView mav) throws UnsupportedEncodingException{
		PageNum pageNum=projectComnService.getPage(type,"conferenceshow");
        mav.addObject("pageNum", pageNum);
		if(type.equals("all")){
			List<Conference> conferenceList=projectComnService.getMeetingByPage(page);
	        mav.addObject("list", conferenceList);
	        mav.setViewName("conferenceShow");
		}else{
	        List<Conference> conferenceList=projectComnService.getConferenceByLevel(type,page);
	        mav.addObject("list", conferenceList);
	        mav.setViewName("conferenceShow");
		}
		return mav;	
	}
	
	@RequestMapping(value="/addConference")
	public @ResponseBody int addConference(String conference_name,String conference_date,String conference_level
			,String conference_place,String conference_staff,String img_id){
		
		String username = SpringSecurityUtil.getUsername();	
		String publish_time = Toolutils.getCurrentTime();
		Conference conference=new Conference(username, publish_time, conference_name, conference_date, conference_level, conference_place, conference_staff, img_id);

		int result=projectComnService.addMeeting(conference);
		return result;
	}
	
/*	@RequestMapping(value="/getMeetingTableStrByUsers")
	private @ResponseBody String getMeetingTableStrByUsers(List<Conference> meetingList){
		
		String outStr = "<table><table class='table table-striped'><thead><tr class='bg-primary'>"
				+ "<th>会议名称</th><th>会议等级</th><th>会议地点</th><th>会议日期</th><th>发布单位</th><th>修改</th><th>删除</th>";
		for( Conference se : meetingList ){
			
			outStr += "<tr><td>"+se.getConference_name()+"</td><td>"+se.getConference_level()+"</td>"
					+ "<td>"+se.getConference_location()+"</td>"
					+ "<td>"+se.getConference_date()+"</td>"
					+ "<td>"+se.getPublish_institution()+"</td>"
					+ "<td><a href=\"#\"><button type=\"button\" id='"+se.getConference_id()+"' class=\"btn btn-warning btn-sm\">修改</button></a></td>"
					+ "<td><button type=\"button\" class=\"btn btn-danger btn-sm\" data-id='"+se.getConference_id()+"'>删除</button></td>";
			
		}		
		outStr += "</tr></table>";		
		return outStr;		
	}*/
	
	@RequestMapping(value="/getMeetingList")
	public @ResponseBody String getAllMeeting(HttpServletRequest req,HttpServletResponse respo){
		List<Conference> conferenceList=projectComnService.getAllMeeting();
		String list=JSONArray.toJSON(conferenceList).toString();
		return JSON.parse(list).toString();
	}
	
	@RequestMapping(value="/deleteMeeting")
	public @ResponseBody boolean deleteMeeting(int id){
		boolean result=projectComnService.deleteMeeting(id);
		return result;
	}
	
}
