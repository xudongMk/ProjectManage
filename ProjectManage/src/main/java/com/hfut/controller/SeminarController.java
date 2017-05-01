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
import com.hfut.domain.PageNum;
import com.hfut.domain.Seminar;
import com.hfut.service.ProjectConmunicationService;
import com.hfut.utils.SpringSecurityUtil;
import com.hfut.utils.Toolutils;

@Controller
public class SeminarController {
	
	@Resource
	private ProjectConmunicationService projectComnService;
	
	@RequestMapping(value="/project")
	public ModelAndView seminarManage(){
		
		String username = SpringSecurityUtil.getUsername();		
		ModelAndView mav = new ModelAndView();
		List<Seminar> seminarList=projectComnService.getSeminarByUsername(username);
		mav.addObject("list", seminarList);
		mav.setViewName("admin/seminarManagement");
		return mav;
	}
	/**研讨会的类型查询
	 * @throws UnsupportedEncodingException **/
/*	@RequestMapping(value="/seminarshow/location/{type}")
	public ModelAndView seminarshowBylocation(@PathVariable String type) throws UnsupportedEncodingException{
		ModelAndView mav = new ModelAndView();
		List<Seminar> seminarList=projectComnService.getSeminarByLocation(new String(type.getBytes("ISO-8859-1"),"UTF-8"));
		mav.addObject("list", seminarList);
		mav.setViewName("seminarShow");
		return mav;	
	}*/
	
	@RequestMapping(value="/seminarshow/{type}/{page}")
	public ModelAndView seminarshowBylocation(@PathVariable String type,@PathVariable int page,ModelAndView mav) throws UnsupportedEncodingException{
		PageNum pageNum=projectComnService.getPage(type,"seminarshow");
        mav.addObject("pageNum", pageNum);
		if(type.equals("all")){
			List<Seminar> seminarList=projectComnService.getSeminarByPage(page);
	        mav.addObject("list", seminarList);
	        mav.setViewName("seminarShow");
		}else{
	        List<Seminar> seminarList=projectComnService.getSeminarByLocation(type,page);
	        mav.addObject("list", seminarList);
	        mav.setViewName("seminarShow");
		}
		return mav;	
	}
	
	@RequestMapping(value="/seminarshow")
	public ModelAndView redProjectShow(){		
		ModelAndView mav = new ModelAndView();
		List<Seminar> seminarList=projectComnService.getAllSeminar();
		mav.addObject("list", seminarList);
		mav.setViewName("seminarShow");
		return mav;
	}
	
/*	@RequestMapping(value="/getSeminarTableStrByUsers")
	private @ResponseBody String getSeminarTableStrByUsers(List<Seminar> seminarList){
		
		String outStr = "<table><table class='table table-striped'><thead><tr class='bg-primary'>"
				+ "<th>项目名称</th><th>项目简介</th><th>发布人</th><th>发布单位</th><th>发布时间</th><th>修改</th><th>删除</th>";
		for( Seminar se : seminarList ){
			
			outStr += "<tr><td>"+se.getSeminar_title()+"</td><td>"+se.getSeminar_content()+"</td>"
					+ "<td>"+se.getPublish_institution()+"</td>"
					+ "<td>"+se.getPublish_institution()+"</td>"
					+ "<td>"+se.getPublish_time()+"</td>"
					+ "<td><a href=\"#\"><button type=\"button\" id='"+se.getSeminar_id()+"' class=\"btn btn-warning btn-sm\">修改</button></a></td>"
					+ "<td><button type=\"button\" class=\"btn btn-danger btn-sm\" data-id='"+se.getSeminar_id()+"'>删除</button></td>";

		}
		
		outStr += "</table>";
		
		return outStr;
		
	}*/
	
	@RequestMapping(value="/addSeminar")
	public @ResponseBody int addSeminar(String seminar_name,String seminar_date,String seminar_place
			,String seminar_content,String seminar_staff,String img_id){
		
		String username = SpringSecurityUtil.getUsername();
		String publish_time=Toolutils.getCurrentTime();
		System.out.println(publish_time);
		Seminar seminar=new Seminar(username, publish_time, seminar_name, seminar_date, seminar_place, seminar_content, seminar_staff, img_id);
		System.out.println(seminar.getSeminar_content());
		int result=projectComnService.addSeminar(seminar);
		return result;
	}
	
	@RequestMapping(value="/deleteSeminar")
	public @ResponseBody boolean deleteSeminar(int id){
		boolean result=projectComnService.deleteSeminar(id);
		return result;
	}
	
	@RequestMapping(value="/getSeminarList")
	public @ResponseBody String getAllSeminar(HttpServletRequest req,HttpServletResponse resp){
		
		List<Seminar> seminarList=projectComnService.getAllSeminar();
		String list=JSONArray.toJSON(seminarList).toString();
		System.out.println("======>>>>");
		System.out.println(list);
		return JSON.parse(list).toString();
	}

}
