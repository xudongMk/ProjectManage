$(document).ready(function($) {
	//政治工作等11个模块页签切换的效果
    $(".words11 .words11_zzgz_xfgz .words11_zzgz_xfgz_title font").click(function(){
    	var parent_num = $(this).parent().parent().index();
    	var num = $(this).index();
    	var nums = $(".words11 .words11_zzgz_xfgz").length;
    	var parent_nums = $(".words11").children().eq(parent_num).find(".words11_zzgz_xfgz_title").find("font").length;
    	
    	for(var i = 0; i < parent_nums; i++){
    		if(i == num){
    			$(".words11").children().eq(parent_num).find(".words11_zzgz_xfgz_title").children().eq(num).css("border-bottom","2px solid #0e5298");
    			$(".words11").children().eq(parent_num).find(".words11_zzgz_xfgz_content").children().eq(num).show();
    		}else{
    			$(".words11").children().eq(parent_num).find(".words11_zzgz_xfgz_title").children().eq(i).css("border-bottom","0px solid #0e5298");
    			$(".words11").children().eq(parent_num).find(".words11_zzgz_xfgz_content").children().eq(i).hide();
    		}
    	}
    });
    
	//广告和其他模块2 - 警情动态/督办信息 - 页签切换的效果
    $("#ad_other2 .ad_other_mjsh .ad_other_mjsh_title font").click(function(){
    	var parent_num = $(this).parent().parent().index();
    	var num = $(this).index();
    	var nums = $("#ad_other2 .ad_other_mjsh").length;
    	var parent_nums = $("#ad_other2").children().eq(parent_num).find(".ad_other_mjsh_title").find("font").length;
    	
    	for(var i = 0; i < parent_nums; i++){
    		if(i == num){
    			$("#ad_other2").children().eq(parent_num).find(".ad_other_mjsh_title").children().eq(num).css("border-bottom","2px solid #0e5298");
    			$("#ad_other2").children().eq(parent_num).find(".ad_other_mjsh_content").children().eq(num).show();
    		}else{
    			$("#ad_other2").children().eq(parent_num).find(".ad_other_mjsh_title").children().eq(i).css("border-bottom","0px solid #0e5298");
    			$("#ad_other2").children().eq(parent_num).find(".ad_other_mjsh_content").children().eq(i).hide();
    		}
    	}
    });
    
	//网站导航 - 鼠标进出的效果
    $(".news_wzdh .news_wzdh_content .button").mouseover(function(){
    	var num = $(this).index();
    	var nums = $(".news_wzdh .news_wzdh_content .button").length;
    	
    	for(var i = 0; i < nums; i++){
    		if(num == i){
    			$(".news_wzdh .tc").children().eq(num).show();
    		}else{
    			$(".news_wzdh .tc").children().eq(i).hide();
    		}
    	}
    });
    $(".news_wzdh .tc .news_wzdh_box").mouseleave(function(){
    	var num = $(this).index();
    	var nums = $(".news_wzdh .news_wzdh_content .button").length;
    	
    	for(var i = 0; i < nums; i++){
    		$(".news_wzdh .tc").children().eq(i).hide();
    	}
    });
    $(".news_wzdh .news_wzdh_content .button").click(function(){
    	var num = $(this).index();
    	var nums = $(".news_wzdh .news_wzdh_content .button").length;
    	
    	for(var i = 0; i < nums; i++){
    		$(".news_wzdh .tc").children().eq(i).hide();
    	}
    });



});