package com.hfut.controller;


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
import com.hfut.domain.Algorithm;
import com.hfut.domain.PageNum;
import com.hfut.service.AlgorithmService;
import com.hfut.utils.SpringSecurityUtil;
import com.hfut.utils.Toolutils;

@Controller
public class AlgorithmController {

	@Resource
	private AlgorithmService algorithmService;
		
	@RequestMapping(value="/algorithmManagement")
	public ModelAndView  algorithmManagement(){
	    ModelAndView mav=new ModelAndView();
	    String username=SpringSecurityUtil.getUsername();
	    List<Algorithm> algorithmList=algorithmService.getAlgorithmByUsername(username);
	    mav.addObject("list", algorithmList);
	    mav.setViewName("admin/algorithmManagement");
	    return mav;
	}
/*	private @ResponseBody String getAlgorithmTableByUser(List<Algorithm> algorithmList) {
	
		String outStr = "<table><table class='table table-striped'><thead><tr class='bg-primary'>"
				+ "<th>算法名称</th><th>算法简介</th><th>算法作者</th><th>相关论文</th><th>数据链接</th><th>发布单位</th><th>修改</th><th>删除</th>";
		for( Algorithm al : algorithmList ){
			
			outStr += "<tr><td>"+al.getAlgorithm_name()+"</td>"
					+ "<td>"+al.getAlgorithm_introduction()+"</td>"
					+ "<td>"+al.getAlgorithm_author()+"</td>"
					+ "<td>"+al.getAlgorithm_reletedpaper()+"</td>"
					+ "<td>"+al.getAlgorithm_link()+"</td>"
					+ "<td>"+al.getPublish_institution()+"</td>"
					+ "<td><a href=\"#\"><button type=\"button\" id='"+al.getAlgorithm_id()+"' class=\"btn btn-warning btn-sm\">修改</button></a></td>"
					+ "<td><button type=\"button\" class=\"btn btn-danger btn-sm\" data-id='"+al.getAlgorithm_id()+"'>删除</button></td>";
			
		}		
		outStr += "</tr></table>";
		return outStr;
	}*/
	
	@RequestMapping(value="/algorithmshow")
	public ModelAndView algorithmshow(){
		ModelAndView mav=new ModelAndView();
		List<Algorithm> algorithmList=algorithmService.getAllAlgorithm();
		mav.addObject("list", algorithmList);
		mav.setViewName("algorithmShow");
		return mav;
	}
	
	@RequestMapping(value="/algorithmshow/{page}")
	public ModelAndView algorithmshowPage(ModelAndView mav,@PathVariable int page){
		PageNum pageNum=algorithmService.getPage();
        mav.addObject("pageNum", pageNum);
		List<Algorithm> algorithmList=algorithmService.getAlgorithmByPage(page);
		mav.addObject("list", algorithmList);
		mav.setViewName("algorithmShow");
		return mav;
	}
	
	@RequestMapping(value="/addAlgorithm")
	public @ResponseBody int addAlgorithm(String algorithm_name,String algorithm_info,String algorithm_author
			,String algorithm_paper,String algorithm_data,String algorithm_link,String img_id){
		
		String publish_time=Toolutils.getCurrentTime();
		String username=SpringSecurityUtil.getUsername();
		Algorithm algorithm=new Algorithm(username,publish_time,algorithm_name, algorithm_info, algorithm_author, algorithm_paper, algorithm_data, algorithm_link, img_id);
		
		int result=algorithmService.addAlgorithm(algorithm);
        return result;
	}
	
	@RequestMapping(value="/getAlgorithmList")
	public @ResponseBody String getAllAlgorithm(HttpServletRequest req,HttpServletResponse resp){
		List<Algorithm> algorithmList=algorithmService.getAllAlgorithm();
		String list=JSONArray.toJSON(algorithmList).toString();
		return JSON.parse(list).toString();
	}
	
	@RequestMapping(value="/deleteAlgorithm")
	public @ResponseBody boolean deleteAlgorithm(int id){
		boolean result=algorithmService.deleteAlgorithm(id);
		return result;
	}
}
