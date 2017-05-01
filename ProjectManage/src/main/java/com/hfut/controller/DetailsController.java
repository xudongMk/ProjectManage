package com.hfut.controller;


import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hfut.domain.Algorithm;
import com.hfut.domain.Award;
import com.hfut.domain.Book;
import com.hfut.domain.Conference;
import com.hfut.domain.ConferencePaper;
import com.hfut.domain.DataSet;
import com.hfut.domain.JournalPaper;
import com.hfut.domain.Patent;
import com.hfut.domain.Seminar;
import com.hfut.domain.SoftCopyRight;
import com.hfut.domain.Student;
import com.hfut.service.AchievementService;
import com.hfut.service.AlgorithmService;
import com.hfut.service.DataSetService;
import com.hfut.service.ProjectConmunicationService;

@Controller
public class DetailsController {

	@Resource
	private ProjectConmunicationService projectComnService;
	
	@Resource
	private AlgorithmService algorithmService;
	
	@Resource
	private DataSetService dataSetService;
	
	@Resource
	private AchievementService achievementService;
	
	/********通过type和id---进入details页面*******/
	@RequestMapping(value="details/{type}/{id}")
	public ModelAndView ProjectShowById(@PathVariable String type,@PathVariable int id){
		ModelAndView mav = new ModelAndView();
		if(type.equals("seminarshow")){
			
			Seminar seminar=projectComnService.getSeminarDetails(id);
			mav.addObject("conf",seminar);
			mav.setViewName("details/seminarShowDetail");
			
		}else if(type.equals("algorithmshow")){		
			
			Algorithm algorithm=algorithmService.getAlgorithmDetails(id);		
			mav.addObject("conf", algorithm);
			mav.setViewName("details/algorithmShowDetail");
			
		}else if(type.equals("datasetshow")){
			
			DataSet dataset=dataSetService.getDataSetDetails(id);
			mav.addObject("conf",dataset);
			mav.setViewName("details/datasetShowDetail");
			
		}else if(type.equals("conferenceshow")){
			
			Conference conference=projectComnService.getConferenceDetails(id);		
			mav.addObject("conf", conference);
			mav.setViewName("details/conferenceShowDetail");
			
		}else if(type.equals("journalpapershow")){
			
			JournalPaper jpaper=achievementService.getJournalpaperDetails(id);
			mav.addObject("conf", jpaper);
			mav.setViewName("details/journalpaperShowDetail");
			
		}else if(type.equals("conferencepapershow")){
			
			ConferencePaper cpaper=achievementService.getConferencepaperDetails(id);
			mav.addObject("conf", cpaper);
			mav.setViewName("details/conferencepaperShowDetail");
			
		}else if(type.equals("patentshow")){
			
			Patent patent=achievementService.getPatentDetails(id);
			mav.addObject("conf", patent);
			mav.setViewName("details/patentShowDetail");
			
		}else if(type.equals("softcopyrightshow")){
			
			SoftCopyRight scr=achievementService.getSoftcopyrightDetails(id);
			mav.addObject("conf", scr);
			mav.setViewName("details/softcopyrightShowDetail");
			
		}else if(type.equals("bookshow")){
			Book book=achievementService.getBookById(id);
			mav.addObject("conf", book);
			mav.setViewName("details/bookShowDetail");
		}else if(type.equals("awardshow")){
			Award award=achievementService.getAwardById(id);
			mav.addObject("conf", award);
			mav.setViewName("details/awardShowDetail");
		}else {
			Student student=achievementService.getStudentById(id);
			mav.addObject("conf", student);
			mav.setViewName("details/studentShowDetail");
		}
		return mav;
	}
}
