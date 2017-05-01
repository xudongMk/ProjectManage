package com.hfut.serviceImp;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hfut.dao.OpenSourceAlgorithmDao;

import com.hfut.domain.OpenAlgorithm;

import com.hfut.service.OpenSourceAlgorithmService;

@Service("opensourcealgorithmImplService")
public class OpenSourceAlgorithmServiceImpl implements OpenSourceAlgorithmService{

	@Resource
	private  OpenSourceAlgorithmDao opensourcealgorithmDao;

	public int insert(OpenAlgorithm openalgorithm) {
		// TODO Auto-generated method stub
		int result = opensourcealgorithmDao.insert(openalgorithm);
		return result;
	}
	
		
	}


