package com.hfut.dao;

import java.util.List;

import com.hfut.domain.Algorithm;
import com.hfut.domain.PageNum;

public interface AlgorithmDao {

	public int addAlgorithm(Algorithm algorithm);
	
	public boolean deleteAlgorithm(int algorithm_id);
	
	public List<Algorithm> getAllAlgorithm();

	public List<Algorithm> getAlgorithmByUsername(String username);

	public Algorithm getAlgorithmById(int id);
	
	public Algorithm getAlgorithmNew();
	
	public List<Algorithm> getAlgorithmByPage(int page_id);

	public PageNum getPage();
	
}
