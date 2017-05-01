	//限制字符个数
 	$(".con").each(function(){
 	var maxwidth=100;
 	console.log(maxwidth);
 	if($(this).text().length>maxwidth){
 	$(this).text($(this).text().substring(0,maxwidth));
 	$(this).html($(this).html()+'…');
 	}
 	});  

   var pagenum = $(".pagenum").text();
   var localurl = window.location.href;
   var index = localurl.lastIndexOf("\/");  
   var page_id  = parseInt(localurl.substring(index + 1, localurl.length));
   /*var pre_num = page_id - 1 ;
   var next_num = page_id + 1;*/
   var page_start = "<li class='border_3'><a href='1'>首页</a></li>";
  /* var page_previous = "<li class='border_3'><a href='"+ pre_num + "'>上一页</a></li>";
   var page_next = "<li class='border_3'><a href='"+ next_num + "'>下一页</a></li>"*/
   var page_end = "<li class='border_3'><a href='"+ pagenum + "'>末页</a></li>";
   var page_skip = "<li class='border_3'><input id='skip' class='text' type='text' value='1'></li>"
	                  +"<li class='border_4'><a href='javascript:void(0)' onclick='skip()'>跳转</a></li>";
   var page_middle ="";
   var page="";
  if(pagenum < 6){
	   var num = parseInt(pagenum);
		   page_middle += pageshow(1,num);
		   page=page_start + page_middle + page_end + page_skip;
	   $(".page ul").append(page);
	   localact();
   }else{
	   if (page_id > 2){
		   var i = page_id - 2; 
	   }else{
		   var i =1;
	   }
	   if(page_id > pagenum -3){
		   var num = parseInt(pagenum);
		   page_middle = pageshow(i,num);
	   }else{
		   var num = page_id+2;
		   page_middle = pageshow(i,num);
	   } 
	
		   page=page_start +  page_middle  +page_end + page_skip;
	   $(".page ul").append(page);
	   localact();
   }
  
  function pageshow(i,num){
	  for(var i;i< (num+1);i++){		   
		   page_middle += "<li class='border_3'><a href='"+ i + "'>" + i + "</a></li>";
	   }
	  return page_middle;
  }
  
  function localact(){
	  $(".page li").each(function(){
		  if($(this).text() == page_id){
			  $(this).addClass("active");
		  }
	  } 
			  )
  }
    
  function skip(){
	  var num = $("#skip").val();
	  window.location.href=num;
  }
  

 	
   
   
    