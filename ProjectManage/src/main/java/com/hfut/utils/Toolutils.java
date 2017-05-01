package com.hfut.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Toolutils {

	  public static String parseTime(long inputTime){
		  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		      Date date= new Date(inputTime);
		      return sdf.format(date);
		      
		  }
	  
	  public static String getCurrentTime(){
		  SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		      Date date= new Date();
		      return sdf.format(date);
		      
		  }
}
