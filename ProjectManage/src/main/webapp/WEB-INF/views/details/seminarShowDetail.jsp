<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="renderer" content="webkit">
<!--国产浏览器高速模式-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>项目研讨会详情</title>
<!-- 基础样式文件 开始 -->
<link href="${ctx }/resources/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/resources/css/base.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/resources/css/index.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/resources/css/details.css" rel="stylesheet"
	type="text/css">
		<!-- 基础样式文件结束 -->
		<!-- 基础JS文件 开始 -->
		<script type="text/javascript" src="${ctx }/resources/js/jquery.js"></script>
		<script type="text/javascript" src="${ctx }/resources/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${ctx }/resources/js/base.js"></script>
</head>
<body>
	<%@ include file="../top.jsp"%>
		<div class="main">
			<div class="main_box">
				<div class="logo"></div>
		          <%@ include file="../nav.jsp"%>
	
                 <div class="address">
					<a href=${ctx }>首页</a><a>：</a><a href="${ctx }/seminarshow/all/1">项目研讨会</a>
				</div>
				<div class="list_main">
		<div class="col-md-10">
			<div class="title">
				<p>${conf.seminar_title}</p>
			</div>
			<div class="post">
				<p>
					<span>发布人:</span><span>${conf.username}</span>
					<span>发布时间:</span><span>${conf.publish_time}</span>
				</p>
			</div>
			<hr></hr>
			<div class="info">
				<p>
					<strong><span>研讨会地点：</span></strong> <span>${conf.seminar_location}</span>
				</p>
				<p>
					<strong><span>研讨会时间：</span></strong> <span>${conf.seminar_date}</span>
				</p>
				<p>
					<strong><span>研讨会人员：</span></strong>
				<span>${conf.seminar_crew}</span>
			</div>

			<div class="abstract">
				<strong><span>研讨会介绍：</span></strong>
				<p>${conf.seminar_content}</p>
			</div>
		</div>
	</div>
	</div>
	</div>
	
<%@ include file="../footer.jsp" %>
	<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
	<script src="${ctx}/resources/js/jquery.min.js"></script>
	<!-- Include all compiled plugins (below), or include individual files as needed -->
	<script src="${ctx}/resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">  
 
    </script>
</body>
</html>