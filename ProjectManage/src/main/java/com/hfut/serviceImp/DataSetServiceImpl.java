package com.hfut.serviceImp;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.hfut.dao.DataSetDao;
import com.hfut.domain.DataSet;
import com.hfut.domain.PageNum;
import com.hfut.service.DataSetService;

@Service("dataSetService")
public class DataSetServiceImpl implements DataSetService{

	@Resource
	private DataSetDao dataSetDao;
	
	public int addDataSet(DataSet dataSet) {
		
		return dataSetDao.addDataSet(dataSet);
	}

	public boolean deleteDataSet(int dataset_id){ 
		return dataSetDao.deleteDataSet(dataset_id);
	}

	public List<DataSet> getAllDataSet() {
		return dataSetDao.getAllDataSet();
	}

	public List<DataSet> getDataSetByUsername(String username) {
		return dataSetDao.getDataSetByUsername(username);
	}

	@Override
	public DataSet getDataSetDetails(int id) {
		return dataSetDao.getDatasetById(id);
	}

	@Override
	public List<DataSet> getDataSetNew() {
		return dataSetDao.getDatasetNew();
	}

	@Override
	public List<DataSet> getDataSetByPage(int page_id) {
		int page;
		if(page_id==1){
			page=page_id-1;
			return dataSetDao.getDataSetByPage(page);
		}else{
			page=(page_id-1)*10;
			return dataSetDao.getDataSetByPage(page);	
		}
	}

	@Override
	public List<DataSet> getDataSetByFomat(String format,int page_id) {
		int page;
		if(page_id==1){
			page=page_id-1;			
		}else{
			page=(page_id-1)*10;			
		}
		return dataSetDao.getDataSetByFomat(format, page);	

	}

	@Override
	public List<DataSet> getDataSetByField(String field) {
		return dataSetDao.getDataSetByField(field);
	}

	@Override
	public PageNum getPage(String type) {
		if(type.equals("all")){
		return dataSetDao.getPageAll();
		}else{
		return dataSetDao.getPage(type);	
		}
	}

}
