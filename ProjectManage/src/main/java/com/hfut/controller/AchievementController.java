package com.hfut.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hfut.domain.Award;
import com.hfut.domain.Book;
import com.hfut.domain.ConferencePaper;
import com.hfut.domain.JournalPaper;
import com.hfut.domain.PageNum;
import com.hfut.domain.Patent;
import com.hfut.domain.SoftCopyRight;
import com.hfut.domain.Student;
import com.hfut.service.AchievementService;
import com.hfut.utils.SpringSecurityUtil;
import com.hfut.utils.Toolutils;

@Controller
public class AchievementController {

	@Resource
	private AchievementService achievementService;
	
	PageNum pageNum=new PageNum();
	/***添加各种成果功能***/
	@RequestMapping(value="/addJournalpaper")
	public @ResponseBody int addJournalpaper(String paper_name,String paper_introduction,String paper_author,String paper_publishers,
			String paper_volunmn,String paper_date,String paper_type,String paper_status,String paper_link,int special,String img_id){
		
		String username = SpringSecurityUtil.getUsername();
		String publish_time=Toolutils.getCurrentTime();
		JournalPaper jpaper=new JournalPaper(paper_name,paper_introduction,paper_author,paper_publishers,paper_volunmn,
				paper_date,paper_type,paper_status,paper_link,username,publish_time,special,img_id);
		int result=achievementService.addJournalpaper(jpaper);
		return result;
	}	
	@RequestMapping(value="/addConferencePaper")
	public @ResponseBody int addConferencePaper(String paper_name,String paper_introduction,String paper_author,String paper_publishers,
			String paper_date,String paper_status,String paper_link,int special,String img_id){	
		
		String username = SpringSecurityUtil.getUsername();	

		String publish_time=Toolutils.getCurrentTime();

		ConferencePaper cpaper=new ConferencePaper(paper_name, paper_introduction, paper_author, paper_publishers, 
				paper_date, paper_status, paper_link, username, publish_time,special,img_id);
		int result=achievementService.addConferencepaper(cpaper);
		return result;
	}
	@RequestMapping(value="/addPatent")
	public @ResponseBody int addPatent(String patent_name,String patent_introduction,String patent_author,String patent_date,
			String patent_link,String patent_status,int special,String img_id){		
		
		String username = SpringSecurityUtil.getUsername();	
		String publish_time=Toolutils.getCurrentTime();
		Patent patent =new Patent(patent_name, patent_introduction, patent_author, patent_date, patent_status, 
				patent_link, username, publish_time,special,img_id);

		int result=achievementService.addPatent(patent);
		return result;
	}	
	@RequestMapping(value="/addSoftcopyright")
	public @ResponseBody int addSoftcopyright(String softcopyright_name,String softcopyright_introduction,String softcopyright_author,String softcopyright_date,
			String softcopyright_status,String softcopyright_link,int special,String img_id){		
		
		String username = SpringSecurityUtil.getUsername();		
		String publish_time=Toolutils.getCurrentTime();
		SoftCopyRight scopyright=new SoftCopyRight(softcopyright_name, softcopyright_introduction, softcopyright_author, softcopyright_date, softcopyright_status, 
				softcopyright_link, username, publish_time,special,img_id);
		int result=achievementService.addSoftcopyright(scopyright);
		return result;
	}
	@RequestMapping(value="/addBook")
	public @ResponseBody int addBook(String book_name,String book_author,String book_time,
			String book_publish,String book_introduction,int special,String img_id){		
		
		String username = SpringSecurityUtil.getUsername();		
		String publish_time=Toolutils.getCurrentTime();
        Book book=new Book(username, publish_time, book_name, book_author, book_time, book_publish, book_introduction,special, img_id);
		int result=achievementService.addBook(book);
		return result;
	}
	@RequestMapping(value="/addAward")
	public @ResponseBody int addAward(String award_name,String award_type,String award_staff,
			String award_time,String award_introduction,int special,String img_id){		
		
		String username = SpringSecurityUtil.getUsername();		
		String publish_time=Toolutils.getCurrentTime();
        Award award=new Award(username, publish_time, award_name, award_type, award_staff, award_time, award_introduction,special, img_id);
		int result=achievementService.addAward(award);
		return result;
	}
	@RequestMapping(value="/addStudent")
	public @ResponseBody int addStudent(String student_name,String student_type,String student_begintime,
			String student_endtime,String student_field,String student_introduction,String img_id){		
		
		String username = SpringSecurityUtil.getUsername();		
		String publish_time=Toolutils.getCurrentTime();
        Student student=new Student(username, publish_time, student_name, student_type, student_begintime, student_endtime, student_field, student_introduction, img_id);
		int result=achievementService.addStudent(student);
		return result;
	}
	/***删除各种成果信息***/
	@RequestMapping(value="/deleteJournalpaper")
	public @ResponseBody boolean deleteJournalpaper(int id){
		boolean result=achievementService.deleteJournalpaper(id);
		return result;
	}
	@RequestMapping(value="/deleteConferencepaper")
	public @ResponseBody boolean deleteConferencepaper(int id){
		boolean result=achievementService.deleteConferencepaper(id);
		return result;
	}
	@RequestMapping(value="/deletePatent")
	public @ResponseBody boolean deletePatent(int id){
		boolean result=achievementService.deletePatent(id);
		return result;
	}
	@RequestMapping(value="/deleteSoftcopyright")
	public @ResponseBody boolean deleteSoftcopyright(int id){
		boolean result=achievementService.deleteSoftcopyright(id);
		return result;
	}
	@RequestMapping(value="/deleteBook")
	public @ResponseBody boolean deleteBook(int id){
		boolean result=achievementService.deleteBook(id);
		return result;
	}
	@RequestMapping(value="/deleteAward")
	public @ResponseBody boolean deleteAward(int id){
		boolean result=achievementService.deleteAward(id);
		return result;
	}
	@RequestMapping(value="/deleteStudent")
	public @ResponseBody boolean deleteStudent(int id){
		boolean result=achievementService.deleteStudent(id);
		return result;
	}
	
	/***成果管理员管理功能***/
	@RequestMapping(value="/journalpaperManagement")
	public ModelAndView journalpaperManagement(){		
		ModelAndView mav = new ModelAndView();
		String username = SpringSecurityUtil.getUsername();
		List<JournalPaper> jouranalpaperList=achievementService.getJournalpaperByUsername(username);
		mav.addObject("list", jouranalpaperList);
		mav.setViewName("admin/journalpaperManagement");
		return mav;
	}
	
	@RequestMapping(value="/conferencepaperManagement")
	public ModelAndView conferencepaperManagement(){		
		ModelAndView mav = new ModelAndView();
		String username = SpringSecurityUtil.getUsername();
		List<ConferencePaper> conferencepaperList=achievementService.getConferencepaperByUsername(username);
		mav.addObject("list", conferencepaperList);
		mav.setViewName("admin/conferencepaperManagement");
		return mav;
	}	
	
	@RequestMapping(value="/patentManagement")
	public ModelAndView patentManagement(){		
		ModelAndView mav = new ModelAndView();
		String username = SpringSecurityUtil.getUsername();
		List<Patent> patentList=achievementService.getPatentByUsername(username);
		mav.addObject("list", patentList);
		mav.setViewName("admin/patentManagement");
		return mav;
	}
	
	@RequestMapping(value="/softcopyrightManagement")
	public ModelAndView softcopyrightManagement(){		
		ModelAndView mav = new ModelAndView();
		String username = SpringSecurityUtil.getUsername();
		List<SoftCopyRight> softcopyrightList=achievementService.getSoftcopyrightByUsername(username);
		mav.addObject("list", softcopyrightList);
		mav.setViewName("admin/softcopyrightManagement");
		return mav;
	}

	@RequestMapping(value="/bookManagement")
	public ModelAndView bookManagement(){		
		ModelAndView mav = new ModelAndView();
		String username = SpringSecurityUtil.getUsername();
		List<Book> bookList=achievementService.getBookByUsername(username);
		mav.addObject("list", bookList);
		mav.setViewName("admin/bookManagement");
		return mav;
	}
	
	@RequestMapping(value="/awardManagement")
	public ModelAndView awardManagement(){		
		ModelAndView mav = new ModelAndView();
		String username = SpringSecurityUtil.getUsername();
		List<Award> awardList=achievementService.getAwardByUsername(username);
		mav.addObject("list", awardList);
		mav.setViewName("admin/awardManagement");
		return mav;
	}

	@RequestMapping(value="/studentManagement")
	public ModelAndView studentManagement(){		
		ModelAndView mav = new ModelAndView();
		String username = SpringSecurityUtil.getUsername();
		List<Student> studentList=achievementService.getStudentByUsername(username);
		mav.addObject("list", studentList);
		mav.setViewName("admin/studentManagement");
		return mav;
	}
	
	/***前台show的功能***/
	@RequestMapping(value="/journalpapershow")
	public ModelAndView journalShow(ModelAndView mav){		
		List<JournalPaper> jouranalpaperList=achievementService.getAllJournalpaper();		
		mav.addObject("list", jouranalpaperList);
		mav.setViewName("journalpaperShow");
		return mav;
	}
	
	@RequestMapping(value="/conferencepapershow")
	public ModelAndView conferencepaperShow(){		
		ModelAndView mav = new ModelAndView();
		List<ConferencePaper> conferencepaperList=achievementService.getAllConferencepaper();		
		mav.addObject("list", conferencepaperList);
		mav.setViewName("conferencepaperShow");
		return mav;
	}
	
	@RequestMapping(value="/patentshow")
	public ModelAndView patentShow(){		
		ModelAndView mav = new ModelAndView();
		List<Patent> patentList=achievementService.getAllPatent();		
		mav.addObject("list", patentList);
		mav.setViewName("patentShow");
		return mav;
	}
	
	@RequestMapping(value="/softcopyrightshow")
	public ModelAndView softcopyrightShow(){		
		ModelAndView mav = new ModelAndView();
		List<SoftCopyRight> softcopyrightList=achievementService.getAllSoftcopyright();		
		mav.addObject("list", softcopyrightList);
		mav.setViewName("softcopyrightShow");
		return mav;
	}
	
	@RequestMapping(value="/journalpapershow/{page}")
	public ModelAndView journalShowPage(ModelAndView mav,@PathVariable int page){	
		pageNum=achievementService.getPage("journalpapershow");
        mav.addObject("pageNum", pageNum);
		List<JournalPaper> jouranalpaperList=achievementService.getJournalpaperByPage(page);		
		mav.addObject("list", jouranalpaperList);
		mav.setViewName("journalpaperShow");
		return mav;
	}
	
	@RequestMapping(value="/conferencepapershow/{page}")
	public ModelAndView conferencepaperShow(ModelAndView mav,@PathVariable int page){	
		pageNum=achievementService.getPage("conferencepapershow");
        mav.addObject("pageNum", pageNum);
		List<ConferencePaper> conferencepaperList=achievementService.getConferencePaperByPage(page);		
		mav.addObject("list", conferencepaperList);
		mav.setViewName("conferencepaperShow");
		return mav;
	}
	
	@RequestMapping(value="/patentshow/{page}")
	public ModelAndView patentShowPage(ModelAndView mav,@PathVariable int page){	
		pageNum=achievementService.getPage("patentshow");
        mav.addObject("pageNum", pageNum);
		List<Patent> patentList=achievementService.getPatentByPage(page);		
		mav.addObject("list", patentList);
		mav.setViewName("patentShow");
		return mav;
	}
	
	@RequestMapping(value="/softcopyrightshow/{page}")
	public ModelAndView softcopyrightShow(ModelAndView mav,@PathVariable int page){
		pageNum=achievementService.getPage("softcopyrightshow");
        mav.addObject("pageNum", pageNum);
		List<SoftCopyRight> softcopyrightList=achievementService.getSoftcopyrightByPage(page);		
		mav.addObject("list", softcopyrightList);
		mav.setViewName("softcopyrightShow");
		return mav;
	}
	
	@RequestMapping(value="/bookshow/{page}")
	public ModelAndView bookShow(ModelAndView mav,@PathVariable int page){
		pageNum=achievementService.getPage("bookshow");
        mav.addObject("pageNum", pageNum);
		List<Book> bookList=achievementService.getBookByPage(page);		
		mav.addObject("list", bookList);
		mav.setViewName("bookShow");
		return mav;
	}
	
	@RequestMapping(value="/awardshow/{page}")
	public ModelAndView awardShow(ModelAndView mav,@PathVariable int page){
		pageNum=achievementService.getPage("awardshow");
        mav.addObject("pageNum", pageNum);
		List<Award> awardList=achievementService.getAwardByPage(page);		
		mav.addObject("list", awardList);
		mav.setViewName("awardShow");
		return mav;
	}
	
	@RequestMapping(value="/studentshow/{page}")
	public ModelAndView studentShow(ModelAndView mav,@PathVariable int page){
		pageNum=achievementService.getPage("studentshow");
        mav.addObject("pageNum", pageNum);
		List<Student> studentList=achievementService.getStudentByPage(page);		
		mav.addObject("list", studentList);
		mav.setViewName("studentShow");
		return mav;
	}
}
