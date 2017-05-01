package com.hfut.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.hfut.domain.Award;
import com.hfut.domain.Book;
import com.hfut.domain.ConferencePaper;
import com.hfut.domain.DataSet;
import com.hfut.domain.JournalPaper;
import com.hfut.domain.Patent;
import com.hfut.domain.Seminar;
import com.hfut.domain.SoftCopyRight;
import com.hfut.service.AchievementService;
import com.hfut.service.AlgorithmService;
import com.hfut.service.DataSetService;
import com.hfut.service.ProjectConmunicationService;

@Controller
public class IndexController {

	@Resource
	private ProjectConmunicationService projectComnService;
	
	@Resource
	private AlgorithmService algorithmService;
	
	@Resource
	private DataSetService dataSetService;
	
	@Resource
	private AchievementService achievementService;
	
	  @RequestMapping("/")
	  public ModelAndView index() {
	      ModelAndView mav = new ModelAndView();
	      
	      List<Seminar> seminar=projectComnService.getSeminarNew();	      
	      List<DataSet> dataset = dataSetService.getDataSetNew();
	      
	      ConferencePaper cpaper=achievementService.getConferencepaperNew();
	      JournalPaper jpaper=achievementService.getJournalpaperNew();
	      Patent patent=achievementService.getPatentNew();
	      SoftCopyRight scr=achievementService.getSoftcopyrightNew();
	      
		  mav.addObject("seminarList", seminar);
		  mav.addObject("datasetList", dataset);
		  
		  mav.addObject("conferencepaper", cpaper);
		  mav.addObject("journalpaper", jpaper);
		  mav.addObject("patent", patent);
		  mav.addObject("softcopyright", scr);
		  
	      mav.setViewName("/index");
	      return mav;
	  }
	  
	  @RequestMapping(value="achievementshow")
	  public ModelAndView achievementshow(ModelAndView mav){
	     List<ConferencePaper> cpaperList=achievementService.getConferencepaperSpecial();
		 List<Patent> patentList=achievementService.getPatentSpecial();
		 List<JournalPaper> jpaperList=achievementService.getJournalpaperSpecial();
		 List<SoftCopyRight> scrList=achievementService.getSoftcopyrightSpecial();
		 List<Book> bookList=achievementService.getBookSpecial();
		 List<Award> awardList=achievementService.getAwardSpecial();
		 
		 mav.addObject("cpaperList", cpaperList);
		 mav.addObject("patentList", patentList);
		 mav.addObject("jpaperList", jpaperList);
		 mav.addObject("scrList", scrList);
		 mav.addObject("bookList", bookList);
		 mav.addObject("awardList", awardList);
		 
		 mav.setViewName("achievementShow");
		return mav;
		  
	  }
}
