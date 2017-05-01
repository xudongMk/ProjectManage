package com.hfut.serviceImp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hfut.dao.AchievementDao;
import com.hfut.domain.Award;
import com.hfut.domain.Book;
import com.hfut.domain.ConferencePaper;
import com.hfut.domain.JournalPaper;
import com.hfut.domain.PageNum;
import com.hfut.domain.Patent;
import com.hfut.domain.SoftCopyRight;
import com.hfut.domain.Student;
import com.hfut.service.AchievementService;

@Service("achievementService")
public class AchievementServiceImpl implements AchievementService{

	@Resource
	private AchievementDao achievementDao;

	@Override
	public int addConferencepaper(ConferencePaper paper) {
		return achievementDao.addConferencepaper(paper);
	}

	@Override
	public int addPatent(Patent patent) {
		return achievementDao.addPatent(patent);
	}

	@Override
	public int addJournalpaper(JournalPaper journalpaper) {
		return achievementDao.addJournalpaper(journalpaper);
	}

	@Override
	public int addSoftcopyright(SoftCopyRight softcopyright) {
		return achievementDao.addSoftcopyright(softcopyright);
	}

	@Override
	public boolean deleteConferencepaper(int paper_id) {
		return achievementDao.deleteConferencePaper(paper_id);
	}

	@Override
	public boolean deletePatent(int patent_id) {
		return achievementDao.deletePatent(patent_id);
	}

	@Override
	public boolean deleteJournalpaper(int paper_id) {
		return achievementDao.deleteJournalpaper(paper_id);
	}

	@Override
	public boolean deleteSoftcopyright(int softcopyright_id) {
		return achievementDao.deleteSoftcopyright(softcopyright_id);
	}

	@Override
	public List<ConferencePaper> getAllConferencepaper() {
		return achievementDao.getAllConferencePaper();
	}

	@Override
	public List<Patent> getAllPatent() {
		return achievementDao.getAllPatent();
	}

	@Override
	public List<JournalPaper> getAllJournalpaper() {
		return achievementDao.getAllJournalpaper();
	}

	@Override
	public List<SoftCopyRight> getAllSoftcopyright() {
		return achievementDao.getAllSoftcopyright();
	}

	@Override
	public List<ConferencePaper> getConferencepaperByUsername(String username) {
		return achievementDao.getConferencepaperByUsername(username);
	}

	@Override
	public List<Patent> getPatentByUsername(String username) {
		return achievementDao.getPatentByUsername(username);
	}

	@Override
	public List<JournalPaper> getJournalpaperByUsername(String username) {
		return achievementDao.getJournalpaperByUsername(username);
	}

	@Override
	public List<SoftCopyRight> getSoftcopyrightByUsername(String username) {
		return achievementDao.getSoftcopyrightByUsername(username);
	}

	@Override
	public ConferencePaper getConferencepaperNew() {
		return achievementDao.getConferencepaperNew();
		
	}

	@Override
	public Patent getPatentNew() {
		return achievementDao.getPatentNew();
	}

	@Override
	public JournalPaper getJournalpaperNew() {
		return achievementDao.getJournalpaperNew();
	}

	@Override
	public SoftCopyRight getSoftcopyrightNew() {
		return achievementDao.getSoftcopyrightNew();
	}

	@Override
	public List<ConferencePaper> getConferencePaperByPage(int page_id) {
		int page;
		if(page_id==1){
			page=page_id-1;
			return achievementDao.getConferencePaperByPage(page);
		}else{
			page=(page_id-1)*10;
			return achievementDao.getConferencePaperByPage(page_id);	
		}
	}

	@Override
	public List<Patent> getPatentByPage(int page_id) {
		int page;
		if(page_id==1){
			page=page_id-1;
			return achievementDao.getPatentByPage(page);
		}else{
			page=(page_id-1)*10;
			return achievementDao.getPatentByPage(page);	
		}
	}

	@Override
	public List<JournalPaper> getJournalpaperByPage(int page_id) {
		int page;
		if(page_id==1){
			page=page_id-1;
			return achievementDao.getJournalpaperByPage(page);
		}else{
			page=(page_id-1)*10;
			return achievementDao.getJournalpaperByPage(page);	
		}
	}

	@Override
	public List<SoftCopyRight> getSoftcopyrightByPage(int page_id) {
		int page;
		if(page_id==1){
			page=page_id-1;
			return achievementDao.getSoftcopyrightByPage(page);
		}else{
			page=(page_id-1)*10;
			return achievementDao.getSoftcopyrightByPage(page);	
		}
	}

	@Override
	public List<Patent> getPatentByStatus(String status) {
		return achievementDao.getPatentByStatus(status);
	}

	@Override
	public ConferencePaper getConferencepaperDetails(int id) {
		return achievementDao.getConferencepaperById(id);
	}

	@Override
	public Patent getPatentDetails(int id) {
		return achievementDao.getPatentById(id);
	}

	@Override
	public JournalPaper getJournalpaperDetails(int id) {
		return achievementDao.getJournalpaperById(id);
	}

	@Override
	public SoftCopyRight getSoftcopyrightDetails(int id) {
		return achievementDao.getSoftcopyrightById(id);
	}

	@Override
	public PageNum getPage(String type) {
		
		if(type.equals("journalpapershow")){
			return achievementDao.getJournalpaperPage();
		}else if(type.equals("conferencepapershow")){
			return achievementDao.getConferencePaperPage();
		}else if(type.equals("patentshow")){
			return achievementDao.getPatentPage();
		}else if(type.equals("softcopyrightshow")){
			return achievementDao.getSoftcopyrightPage();
		}else if(type.equals("bookshow")){
			return achievementDao.getBookPage();
		}else if(type.equals("awardshow")){
			return achievementDao.geAwardPage();
		}else{
			return achievementDao.getStudentPage();
		}
		
	}

	@Override
	public List<Book> getBookByPage(int page_id) {
		int page;
		if(page_id==1){
			page=page_id-1;
			return achievementDao.getBookByPage(page);
		}else{
			page=(page_id-1)*10;
			return achievementDao.getBookByPage(page);
		}
	}

	@Override
	public List<Award> getAwardByPage(int page_id) {
		int page;
		if(page_id==1){
			page=page_id-1;
			return achievementDao.getAwardByPage(page);
		}else{
			page=(page_id-1)*10;
			return achievementDao.getAwardByPage(page);
		}
	}

	@Override
	public List<Student> getStudentByPage(int page_id) {
		int page;
		if(page_id==1){
			page=page_id-1;
			return achievementDao.getStudentByPage(page);
		}else{
			page=(page_id-1)*10;
			return achievementDao.getStudentByPage(page);
		}
	}

	@Override
	public int addBook(Book book) {
		return achievementDao.addBook(book);
	}

	@Override
	public int addAward(Award award) {
		return achievementDao.addAward(award);
	}

	@Override
	public int addStudent(Student student) {
		return achievementDao.addStudent(student);
	}

	@Override
	public boolean deleteBook(int book_id) {
		return achievementDao.deleteBook(book_id);
	}

	@Override
	public boolean deleteAward(int award_id) {
		return achievementDao.deleteAward(award_id);
	}

	@Override
	public boolean deleteStudent(int student_id) {
		return achievementDao.deleteStudent(student_id);
	}

	@Override
	public List<Book> getBookByUsername(String username) {
		return achievementDao.getBookByUsername(username);
	}

	@Override
	public List<Award> getAwardByUsername(String username) {
		return achievementDao.getAwardByUsername(username);
	}

	@Override
	public List<Student> getStudentByUsername(String username) {
		return achievementDao.getStudentByUsername(username);
	}

	@Override
	public List<ConferencePaper> getConferencepaperSpecial() {
		return achievementDao.getConferencepaperSpecial();
	}

	@Override
	public List<Patent> getPatentSpecial() {
		return achievementDao.getPatentSpecial();
	}

	@Override
	public List<JournalPaper> getJournalpaperSpecial() {
		return achievementDao.getJournalpaperSpecial();
	}

	@Override
	public List<SoftCopyRight> getSoftcopyrightSpecial() {
		return achievementDao.getSoftcopyrightSpecial();
	}

	@Override
	public List<Book> getBookSpecial() {
		return achievementDao.getBookSpecial();
	}

	@Override
	public List<Award> getAwardSpecial() {
		return achievementDao.getAwardSpecial();
	}

	@Override
	public Book getBookById(int id) {
		return  achievementDao.getBookById(id);
	}

	@Override
	public Award getAwardById(int id) {
		return achievementDao.getAwardById(id);
	}

	@Override
	public Student getStudentById(int id) {
		return achievementDao.getStudentById(id);
	}

}
