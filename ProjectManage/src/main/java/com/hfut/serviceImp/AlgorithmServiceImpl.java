package com.hfut.serviceImp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hfut.dao.AlgorithmDao;
import com.hfut.domain.Algorithm;
import com.hfut.domain.PageNum;
import com.hfut.service.AlgorithmService;

@Service("algorithmService")
public class AlgorithmServiceImpl implements AlgorithmService{

	@Resource
	private AlgorithmDao algorithmDao;
	public int addAlgorithm(Algorithm algorithm) {		
		return algorithmDao.addAlgorithm(algorithm);
	}

	public boolean deleteAlgorithm(int algorithm_id) {
		return algorithmDao.deleteAlgorithm(algorithm_id);
	}

	public List<Algorithm> getAllAlgorithm() {
		return algorithmDao.getAllAlgorithm();
	}

	public List<Algorithm> getAlgorithmByUsername(String username) {
		return algorithmDao.getAlgorithmByUsername(username);
	}

	@Override
	public Algorithm getAlgorithmDetails(int id) {
		return algorithmDao.getAlgorithmById(id);
	}

	@Override
	public Algorithm getAlgorithmNew() {
		return algorithmDao.getAlgorithmNew();
	}

	@Override
	public List<Algorithm> getAlgorithmByPage(int page_id) {
		int page;
		if(page_id==1){
			page=page_id-1;
			return algorithmDao.getAlgorithmByPage(page);
		}else{
			page=(page_id-1)*10;
			return algorithmDao.getAlgorithmByPage(page);	
		}
	}

	@Override
	public PageNum getPage() {
		return algorithmDao.getPage();
	}

}
