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
		
		<title>项目成果</title>
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
					<a href=${ctx }>首页</a><a>：</a><a href="${ctx }/achievementshow"">项目成果</a><a>&gt;</a><a href="javascript:void(0);" id="#">亮点成果</a>
				</div>
				<div class="list_main">
					<!-- hot 开始 -->
					<%@ include file="achieveleft.jsp"%>
					<!-- hot 结束 -->
					<!-- list_con 开始 -->
					<div class="list_pic_con">
						<div class="list_pic_con_title">
							<font>亮点成果</font>
						</div>
						<div class="list_pic_con_content">
							<ul>
							<c:forEach items="${jpaperList}" var="list" begin="0" >
							<li>
							<img src="${ctx }/resources/pub_images/${list.img_id}">
							<p class="title"><a href="${ctx }/details/journalpapershow/${list.paper_id}">
							${list.paper_name}</a></p>
							<p class="time">期刊论文</p>
							<p class="con">${list.paper_introduction}</p>							
							</li>
						  	</c:forEach>	
						  	<c:forEach items="${cpaperList}" var="list" begin="0" >
							<li>
							<img src="${ctx }/resources/pub_images/${list.img_id}">
							<p class="title"><a href="${ctx }/details/conferencepapershow/${list.paper_id}">
							${list.paper_name}</a></p>
							<p class="time">会议论文</p>
							<p class="con">${list.paper_introduction}</p>							
							</li>
						  	</c:forEach>
						  <c:forEach items="${patentList}" var="list" begin="0" >
							<li>
							<img src="${ctx }/resources/pub_images/${list.img_id}">
							<p class="title"><a href="${ctx }/details/patentshow/${list.patent_id}">
							${list.patent_name}</a></p>
							<p class="time">发明专利</p>
							<p class="con">${list.patent_introduction}</p>							
							</li>
						  	</c:forEach>
								<c:forEach items="${awardList}" var="list" begin="0" >
							<li>
							<img src="${ctx }/resources/pub_images/${list.img_id}">
							<p class="title"><a href="${ctx }/details/awardshow/${list.award_id}">
							${list.award_name}</a></p>
							<p class="time">科技获奖</p>
							<p class="con">${list.award_introduction}</p>							
							</li>
						  	</c:forEach>
						  	<c:forEach items="${bookList}" var="list" begin="0" >
							<li>
							<img src="${ctx }/resources/pub_images/${list.img_id}">
							<p class="title"><a href="${ctx }/details/bookshow/${list.book_id}">
							${list.book_name}</a></p>
							<p class="time">学术论著</p>
							<p class="con">${list.book_introduction}</p>							
							</li>
						  	</c:forEach>
						  	<c:forEach items="${scrList}" var="list" begin="0" >
							<li>
							<img src="${ctx }/resources/pub_images/${list.img_id}">
							<p class="title"><a href="${ctx }/details/softcopyrightshow/${list.softcopyright_id}">
							${list.softcopyright_name}</a></p>
							<p class="time">软件著作权</p>
							<p class="con">${list.softcopyright_introduction}</p>							
							</li>
						  	</c:forEach>	
							</ul>
							<%-- <div class="page">
								<ul>
									<li class="border_3"><span>共</span><span class="pagenum">${ pageNum.pageNum}</span><span>页</span></li>
																		
								</ul>
							</div> --%>
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