package com.hfut.controller;


import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.hfut.domain.OpenAlgorithm;
import com.hfut.service.OpenSourceAlgorithmService;

@Controller
public class OpenSourceAlgorithmController {

	@Autowired  
	private HttpServletRequest request;
	
	@Resource
	private OpenSourceAlgorithmService opensourcealgorithmImplService;
	
	@RequestMapping(value="/addOpenAlgorithm")
	public @ResponseBody int addOpenAlgorithm(String algorithm_name, String algorithm_type,String algorithm_tool,String algorithm_language,String algorithm_parameter,
			String algorithm_data_format,String algorithm_method, String sampleDataName){
		
		System.out.println("hi");
		OpenAlgorithm openalgorithm = new OpenAlgorithm();		
		openalgorithm.setAlgorithm_data_format(algorithm_data_format);
		openalgorithm.setAlgorithm_language(algorithm_language);
		openalgorithm.setAlgorithm_method(algorithm_method);
		openalgorithm.setAlgorithm_name(algorithm_name);
		openalgorithm.setAlgorithm_parameter(algorithm_parameter);
		openalgorithm.setAlgorithm_tool(algorithm_tool);
		openalgorithm.setAlgorithm_type(algorithm_type);
		int result =opensourcealgorithmImplService.insert(openalgorithm);
	    return result;			
	}	
}

