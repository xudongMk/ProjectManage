package com.hfut.service;

import java.util.List;

import com.hfut.domain.DataSet;
import com.hfut.domain.PageNum;

public interface DataSetService {

	public int addDataSet(DataSet dataSet);
	
	public boolean deleteDataSet(int dataset_id);
	
	public List<DataSet> getAllDataSet();

	public List<DataSet> getDataSetByUsername(String username);

	public DataSet getDataSetDetails(int id);
	
	public List<DataSet> getDataSetNew();
	
	public List<DataSet> getDataSetByPage(int page_id);
	//数据的格式和数据领域
	public List<DataSet> getDataSetByFomat(String format,int page);
	public List<DataSet> getDataSetByField(String field);
	
	public PageNum getPage(String type);
}
