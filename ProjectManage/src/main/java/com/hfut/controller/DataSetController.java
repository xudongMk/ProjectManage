package com.hfut.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.hfut.domain.DataSet;
import com.hfut.domain.PageNum;
import com.hfut.service.DataSetService;
import com.hfut.utils.SpringSecurityUtil;
import com.hfut.utils.Toolutils;

@Controller
public class DataSetController {

	@Resource
	private DataSetService dataSetService;
	
	@RequestMapping(value="/dataManagement")
	public ModelAndView datasetManagement(){
		ModelAndView mav=new ModelAndView();
		String username = SpringSecurityUtil.getUsername();
		List<DataSet> datasetList=dataSetService.getDataSetByUsername(username);
		mav.addObject("list", datasetList);
		mav.setViewName("admin/dataManagement");
		return mav;
	}	
	
/*	@RequestMapping(value="/getDataSetTableByUser")
	private @ResponseBody String getDataSetTableByUser(List<DataSet> datasetList) {
		
		String outStr = "<table><table class='table table-striped'><thead><tr class='bg-primary'>"
				+ "<th>数据名称</th><th>数据简介</th><th>数据格式</th><th>相关链接</th><th>数据来源</th><th>发布单位</th><th>修改</th><th>删除</th>";
		for( DataSet ds : datasetList ){
			
			outStr += "<tr><td>"+ds.getDataset_name()+"</td>"
					+ "<td>"+ds.getDataset_introduction()+"</td>"
					+ "<td>"+ds.getDataset_format()+"</td>"
					+ "<td>"+ds.getDataset_link()+"</td>"
					+ "<td>"+ds.getDataset_field()+"</td>"
					+ "<td>"+ds.getPublish_institution()+"</td>"
					+ "<td><a href=\"#\"><button type=\"button\" id='"+ds.getDataset_id()+"' class=\"btn btn-warning btn-sm\">修改</button></a></td>"
					+ "<td><button type=\"button\" class=\"btn btn-danger btn-sm\" data-id='"+ds.getDataset_id()+"'>删除</button></td>";		
		}		
		outStr += "</tr></table>";
		return outStr;
	}*/
	
	@RequestMapping(value="/dataSetshow")
	public ModelAndView dataSetshow(){
		ModelAndView mav=new ModelAndView();
		List<DataSet> datasetList=dataSetService.getAllDataSet();
		mav.addObject("list", datasetList);
		mav.setViewName("datasetShow");
		return mav;
	}
    /**根据数据的格式**/
	@RequestMapping(value="/dataSetshow/{type}/{page}")
	public ModelAndView datasetshowByformat(@PathVariable String type,@PathVariable int page){
		
		ModelAndView mav=new ModelAndView();
		PageNum pageNum=dataSetService.getPage(type);
        mav.addObject("pageNum", pageNum);
		if(type.equals("all")){
			List<DataSet> datasetList=dataSetService.getDataSetByPage(page);
	        mav.addObject("list", datasetList);
	        mav.setViewName("datasetShow");
		}else{
	        List<DataSet> datasetList=dataSetService.getDataSetByFomat(type,page);
	        mav.addObject("list", datasetList);
	        mav.setViewName("datasetShow");
		}
		return mav;		
	}
	
	@RequestMapping(value="/addDataSet")
	public @ResponseBody int addDataSet(String data_name,String data_info,String data_domain
			,String data_struct,String data_url,String data_source,String data_tag,String img_id){
		
		String username = SpringSecurityUtil.getUsername();	
		String publish_time = Toolutils.getCurrentTime();
		DataSet dataSet=new DataSet(username, publish_time, data_name, data_info, data_domain, data_struct, data_url, data_source, data_tag, img_id);
		
		int result=dataSetService.addDataSet(dataSet);
		return result;
	}
	
/*	@RequestMapping(value="/getDataSetList")
	public @ResponseBody String getAllDataSet(HttpServletRequest req,HttpServletResponse resp){
		List<DataSet> dataSetList=dataSetService.getAllDataSet();
		String list=JSONArray.toJSON(dataSetList).toString();
		System.out.println(list);
		return JSON.parse(list).toString();
	}*/
	
	@RequestMapping(value="/deleteDataset")
	public @ResponseBody boolean deleteDataSet(int id){
		
		boolean result=dataSetService.deleteDataSet(id);
		return result;
	}
	
}
