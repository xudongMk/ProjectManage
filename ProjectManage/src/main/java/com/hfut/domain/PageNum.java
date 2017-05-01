package com.hfut.domain;

public class PageNum {

	private int pageNum;
	
	public int getPageNum() {
		return pageNum;
	}
	public void setPageNum(int pageNum) {
		int pageok=pageNum/10+1;
		this.pageNum = pageok;
	}	
}
