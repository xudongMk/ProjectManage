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
		
		<title>项目研讨会</title>
		<!-- 基础样式文件 开始 -->
		<link href="${ctx }/resources/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="${ctx }/resources/css/base.css" rel="stylesheet" type="text/css">
		<link href="${ctx }/resources/css/index.css" rel="stylesheet" type="text/css">
		<style type="text/css">
		.con{
		overflow: hidden;
	    display: -webkit-box;
	    -webkit-line-clamp: 3;
	    -webkit-box-orient: vertical;
	    word-break: break-all;
		}		
		</style>
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
					<a href=${ctx }>首页</a><a>：</a><a href="javascript:void(0);">项目研讨会</a><a>&gt;</a>
				</div>

				<div class="list_main">
					<!-- hot 开始 -->
					<div class="hot">
						<div class="hot_title">
							项目研讨会
						</div>
						<div class="hot_content">
							<div class="hot_content_box">
								<div class="hot_content_box_title">
									<img src="${ctx }/resources/img/hot_list_ico.png" />举办时间
								</div>
								<div class="hot_content_box_content">
									<ul>
									    <li><a href="${ctx }/seminarshow/all/1">全部</a></li>
									</ul>
								</div>
							</div>
					
						
						</div>
					</div>
					<!-- hot 结束 -->
					<!-- list_con 开始 -->
					<div class="list_pic_con">
						<div class="list_pic_con_title">
							<font>项目研讨会</font>
						</div>
						<div class="list_pic_con_content">
							<ul>
							<c:forEach items="${list}" var="list" begin="0" >
							<li>
							<img src="${ctx }/resources/pub_images/${list.img_id}">
							<p class="title"><a href="${ctx }/details/seminarshow/${list.seminar_id}">
							${list.seminar_title}</a></p>
							<p class="time">举办时间：${list.seminar_date}</p>
							<p class="con">${list.seminar_content}</p>							
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
					<!-- hot 结束 -->
				</div>
				<!-- list_main 结束 -->

			<%@ include file="footer.jsp" %>
			</div>
		</div>
		<!-- main 结束 -->
		<script type="text/javascript" src="${ctx }/resources/js/page_nav.js"></script>
          <script type="text/javascript">  
     	 var year=new Date().getFullYear(); 
	 	 for (var i = parseInt(year);i>2014;i--){
		var str=" <li><a href=\"${ctx }/seminarshow/"+i+"/1\">"+i+" 年</a></li>"
	 		 $(".hot_content_box_content ul").append(str);
	 }
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