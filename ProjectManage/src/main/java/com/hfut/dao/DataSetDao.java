package com.hfut.dao;

import java.util.List;

import com.hfut.domain.DataSet;
import com.hfut.domain.PageNum;

public interface DataSetDao {

	public int addDataSet(DataSet dataSet);
	
	public boolean deleteDataSet(int dataset_id);
	
	public List<DataSet> getAllDataSet();

	public List<DataSet> getDataSetByUsername(String username);

	public DataSet getDatasetById(int id);
	
	public List<DataSet> getDatasetNew();
	
	public List<DataSet> getDataSetByPage(int page_id);
	//数据的格式和数据领域
	public List<DataSet> getDataSetByFomat(String format,int page);
	public PageNum getPage(String type);
	public PageNum getPageAll();
	public List<DataSet> getDataSetByField(String field);
}
