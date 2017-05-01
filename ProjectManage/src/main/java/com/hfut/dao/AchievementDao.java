package com.hfut.dao;

import java.util.List;

import com.hfut.domain.Award;
import com.hfut.domain.Book;
import com.hfut.domain.ConferencePaper;
import com.hfut.domain.JournalPaper;
import com.hfut.domain.PageNum;
import com.hfut.domain.Patent;
import com.hfut.domain.SoftCopyRight;
import com.hfut.domain.Student;

public interface AchievementDao {
	
	public int addConferencepaper(ConferencePaper paper);
	public int addPatent(Patent patent);
	public int addJournalpaper(JournalPaper journalpaper);
	public int addSoftcopyright(SoftCopyRight softcopyright);
	public int addBook(Book book);
	public int addAward(Award award);
	public int addStudent(Student student);

	public boolean deleteConferencePaper(int paper_id);
	public boolean deletePatent(int patent_id);
	public boolean deleteJournalpaper(int paper_id);
	public boolean deleteSoftcopyright(int softcopyright_id);
	public boolean deleteBook(int book_id);
	public boolean deleteAward(int award_id);
	public boolean deleteStudent(int student_id);

	public List<ConferencePaper> getAllConferencePaper();
	public List<Patent> getAllPatent();
	public List<JournalPaper> getAllJournalpaper();
	public List<SoftCopyRight> getAllSoftcopyright();
	
	public List<ConferencePaper> getConferencepaperByUsername(String username);
	public List<Patent> getPatentByUsername(String username);
	public List<JournalPaper> getJournalpaperByUsername(String username);
	public List<SoftCopyRight> getSoftcopyrightByUsername(String username);
	public List<Book> getBookByUsername(String username);
	public List<Award> getAwardByUsername(String username);
	public List<Student> getStudentByUsername(String username);
	
	//根据id获取记录的详细信息
	public ConferencePaper getConferencepaperById(int id);
	public Patent getPatentById(int id);
	public JournalPaper getJournalpaperById(int id);
	public SoftCopyRight getSoftcopyrightById(int id);
	public Book getBookById(int id);
	public Award getAwardById(int id);
	public Student getStudentById(int id);
	
	//获取最新的记录
	public ConferencePaper getConferencepaperNew();
	public Patent getPatentNew();
	public JournalPaper getJournalpaperNew();
	public SoftCopyRight getSoftcopyrightNew();
	
	//根据页码获取记录
	public List<ConferencePaper> getConferencePaperByPage(int page);
	public List<Patent> getPatentByPage(int page);
	public List<JournalPaper> getJournalpaperByPage(int page);
	public List<SoftCopyRight> getSoftcopyrightByPage(int page);
	public List<Patent> getPatentByStatus(String status);
	public List<Book> getBookByPage(int page);
	public List<Award> getAwardByPage(int page);
	public List<Student> getStudentByPage(int page);
	
	public PageNum getConferencePaperPage();
	public PageNum getPatentPage();
	public PageNum getJournalpaperPage();
	public PageNum getSoftcopyrightPage();
	public PageNum getBookPage();
	public PageNum geAwardPage();
	public PageNum getStudentPage();
	
	//特色成果
	public List<ConferencePaper> getConferencepaperSpecial();
	public List<Patent> getPatentSpecial();
	public List<JournalPaper> getJournalpaperSpecial();
	public List<SoftCopyRight> getSoftcopyrightSpecial();
	public List<Book> getBookSpecial();
	public List<Award> getAwardSpecial();
}
