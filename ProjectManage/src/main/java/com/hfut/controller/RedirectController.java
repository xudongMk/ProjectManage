package com.hfut.controller;


import java.io.File;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hfut.service.AchievementService;
import com.hfut.service.AlgorithmService;
import com.hfut.service.DataSetService;
import com.hfut.service.ProjectConmunicationService;

@Controller
public class RedirectController {

	@Resource
	private ProjectConmunicationService projectComnService;
	
	@Resource
	private AlgorithmService algorithmService;
	
	@Resource
	private DataSetService dataSetService;
	
	@Resource
	private AchievementService achievementService;

	@Autowired  
	private HttpServletRequest request;
	
	@RequestMapping(value="/projectConm")
	public String redprojectConm(){
		return "admin/seminar";
	}
	
	//添加会议
	@RequestMapping(value="/conference")
	public String addConference(){
		return "admin/conference";
	}
	@RequestMapping(value="/dataSet")
	public String reddataSet(){
		return "admin/dataSet";
	}
	@RequestMapping(value="/algorithm")
    public String redalgorithm(){
		return "admin/algorithm";
	}
	@RequestMapping(value="/journalpaper")
	public String redjournalpaper(){
		return "admin/journalpaper";
	}
	@RequestMapping(value="/conferencepaper")
	public String redconferencepaper(){
		return "admin/conferencepaper";
	}
	@RequestMapping(value="/patent")
	public String redpatent(){
		return "admin/patent";
	}
	@RequestMapping(value="/softcopyright")
	public String redsoftcopyright(){
		return "admin/softcopyright";
	}
	@RequestMapping(value="/introduction")
	public String redintroduction(){
		return "introduction";
	}
	@RequestMapping(value="/team")
	public String team(){
		return "team";
	}
/*	@RequestMapping(value="/achievementshow")
	public String achievementshow(){
		return "achievementShow";
	}*/
	@RequestMapping(value="/aboutme")
	public String aboutme(){
		return "aboutme";
	}
	@RequestMapping(value="/infoManage")
	public String infoManage(){
		return "admin/infoManagement";
	}
	@RequestMapping(value="/awardshow")
	public String awardshow(){
		return "awardShow";
	}
	@RequestMapping(value="/bookshow")
	public String bookshow(){
		return "bookShow";
	}
	@RequestMapping(value="/studentshow")
	public String studentshow(){
		return "studentShow";
	}
	/*新加的开源算法*/
	@RequestMapping(value="/open_source_algorithm")
	public String addopen_source_algorithm(){
		return "open_source_algorithm";
	}
	
	//
	@RequestMapping("/signin")
	public ModelAndView signin() {
	   ModelAndView mav = new ModelAndView();
	   mav.setViewName("/login");
	   return mav;
	}
	//
	@RequestMapping("/register")
    public ModelAndView register() {
	  ModelAndView mav = new ModelAndView();
	  mav.addObject("type", 2);
	  mav.setViewName("/login");
	  return mav;
	}
	
	@RequestMapping("/template/test")
    public ModelAndView test() {
      ModelAndView mav = new ModelAndView();
      mav.setViewName("/template/test");
      return mav;
    }
		
    @RequestMapping("/signout")
    public String execute(HttpSession session){
      session.invalidate();
      return "/index";
    }
	
	@RequestMapping("/upload_sample_data")
	public @ResponseBody String tst() {		
	      DiskFileItemFactory factory = new DiskFileItemFactory();
	      ServletFileUpload sfu = new ServletFileUpload(factory);
	      sfu.setHeaderEncoding("UTF-8"); // 处理中文问题
	      String fileSaveName = "";
//	      sfu.setSizeMax(1024 * 1024); // 限制文件大小
	      try{
	          List<FileItem> fileItems = sfu.parseRequest(request); // 解码请求
	          System.out.println(fileItems.size());         
	          for (FileItem fi : fileItems) {
	          	fileSaveName = UUID.randomUUID()+fi.getName().substring(fi.getName().lastIndexOf("."),fi.getName().length());
	          	String path=request.getSession().getServletContext().getRealPath("resources/pub_images");
	          	System.out.println("image ulr:"+path);
	            fi.write(new File(path,fileSaveName));
	          }		
		      } catch (Exception e) {
				e.printStackTrace();     
			}	
			return fileSaveName;
		}	
}
