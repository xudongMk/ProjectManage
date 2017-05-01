<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
        <meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<meta name="renderer" content="webkit">
		<!--国产浏览器高速模式-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>人才培养</title>
		<!-- 基础样式文件 开始 -->
		<link href="${ctx }/resources/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="${ctx }/resources/css/base.css" rel="stylesheet" type="text/css">
		<link href="${ctx }/resources/css/index.css" rel="stylesheet" type="text/css">
		<!-- 基础样式文件结束 -->
		<!-- 基础JS文件 开始 -->
		<script type="text/javascript" src="${ctx }/resources/js/jquery.js"></script>
		<script type="text/javascript" src="${ctx }/resources/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${ctx }/resources/js/base.js"></script>
		<script type="text/javascript" src="${ctx }/resources/js/index.js"></script>
		
	</head>
  <body>

     <%@ include file="top.jsp"%>
		<div class="main">
			<div class="main_box">
				<div class="logo"></div>
		          <%@ include file="nav.jsp"%>
	
                 <div class="address">
					<a href=${ctx }>首页</a><a>：</a><a href="${ctx }/achievementshow">项目成果</a><a>&gt;</a><a href="javascript:void(0);" id="#">人才培养</a>
				</div>
				<div class="list_main">
					<!-- hot 开始 -->
					<%@ include file="achieveleft.jsp"%>
					<!-- hot 结束 -->
					<!-- list_con 开始 -->
					<div class="list_pic_con">
						<div class="list_pic_con_title">
							<font>人才培养</font>
						</div>
						<div class="list_pic_con_content">
							<ul>
							<c:forEach items="${list}" var="list" begin="0" >
							<li>
							<img src="${ctx }/resources/pub_images/${list.img_id}">
							<p class="title"><a href="${ctx }/details/studentshow/${list.student_id}">
							${list.student_name}</a></p>
							<p class="time">学校：${list.student_field}</p>
							<p class="con">${list.student_introduction}</p>							
							</li>
						  	</c:forEach>	
								
							</ul>
							<div class="page">
								<ul>
									<li class="border_3"><span>共</span><span class="pagenum">${ pageNum.pageNum}</span><span>页</span></li>
																		
								</ul>
							</div>
							</div>
						</div>
					</div>
					<!-- hot 结束 -->
				</div>
				<!-- list_main 结束 -->

			<%@ include file="footer.jsp" %>
			</div>
		<!-- main 结束 -->
				<script type="text/javascript" src="${ctx }/resources/js/page_nav.js"></script>
 <script type="text/javascript">  
       var address = $(".list_pic_con_title").text();
       console.log(address);
       $("#address").append(address);
       
   	//限制字符个数
   	$(".con").each(function(){
   	var maxwidth=100;
   	console.log(maxwidth);
   	if($(this).text().length>maxwidth){
   	$(this).text($(this).text().substring(0,maxwidth));
   	$(this).html($(this).html()+'…');
   	}
   	});
   	
       
		</script>
	</body>

</html>