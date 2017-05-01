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
		
		<title>数据共享</title>
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
					<a href=${ctx }>首页</a><a>：</a><a href="javascript:void(0);">数据共享</a><a>&gt;</a>
				</div>

				<div class="list_main">
					<!-- hot 开始 -->
					<div class="hot">
						<div class="hot_title">
							数据共享
						</div>
						<div class="hot_content">
							<div class="hot_content_box">
								<div class="hot_content_box_title">
									<img src="${ctx }/resources/img/hot_list_ico.png" />数据格式
								</div>
								<div class="hot_content_box_content">
									<ul>
									   <li><a href="${ctx }/dataSetshow/all/1">全部</a></li>
										<li><a href="${ctx }/dataSetshow/rar/1" onclick="changeFormat()">rar</a></li>
										<li><a href="${ctx }/dataSetshow/txt/1" onclick="changeFormat()">txt</a></li>
									</ul>
								</div>
							</div>
					
						</div>
					</div>
					<!-- hot 结束 -->
					<!-- list_con 开始 -->
					<div class="list_pic_con">
						<div class="list_pic_con_title">
							<font>数据共享</font>
						</div>
						<div class="list_pic_con_content">
							<ul>
						<c:forEach items="${list}" var="list" begin="0" >
							<li>
							<img src="${ctx }/resources/pub_images/${list.img_id}">
							<p class="title"><a href="${ctx }/details/datasetshow/${list.dataset_id}">
							${list.dataset_name}</a></p>
							<p class="time">发布时间：${list.publish_time}</p>
							<p class="con">${list.dataset_introduction}</p>							
							</li>
						  </c:forEach>									
								
							</ul>
							<div class="page">
								<ul>
									<li class="border_3"><span>共</span><span class="pagenum">${pageNum.pageNum }</span><span>页</span></li>
																		
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
</script>
	</body>

</html>