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

<title>首页</title>
<!-- 基础样式文件 开始 -->
<link href="${ctx }/resources/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/resources/css/base.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/resources/css/index.css" rel="stylesheet"
	type="text/css">
<style type="text/css">
a {
	overflow: hidden;
	white-space: nowrap;
	text-overflow: ellipsis;
	width: 100%;
}
.first_semi{
margin-left:13px;
}

.btn.btn-default.btn-lg.btn-block{
font-size:15px;
padding:7px;
}
</style>
<!-- 基础样式文件结束 -->
<!-- 基础JS文件 开始 -->
<script type="text/javascript" src="${ctx }/resources/js/jquery.js"></script>
<script type="text/javascript"
	src="${ctx }/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/base.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/index.js"></script>
<!-- 轮播图 开始 -->
<script type="text/javascript" src="${ctx }/resources/js/lb_jcfc.js"></script>
<link href="${ctx }/resources/css/lbt1.css" rel="stylesheet"
	type="text/css">
<script type="text/javascript" src="${ctx }/resources/js/lbt1.js"></script>
<!-- 基础JS文件 结束 -->
</head>
<body>

	<%@ include file="top.jsp"%>
	<div class="main">
		<div class="main_box">
			<div class="logo"></div>
			<%@ include file="nav.jsp"%>
			<div class="news">
				<div class="row">
					<div class="news_lb  col-md-8">
						<div id="playBox">
							<div class="pre"></div>
							<div class="next"></div>
							<div class="smalltitle">
								<ul>
									<li class="thistitle"></li>
									<li></li>
									<li></li>
								</ul>
							</div>
							<ul class="oUlplay">
								<li><img src="${ctx }/resources/img/index/indexa.jpg">
										</li>
								<li><img src="${ctx }/resources/img/index/indexb.jpg">
										</li>
								<li><img src="${ctx }/resources/img/index/indexc.jpg">
										</li>
							</ul>
						</div>
					</div>
					<div class="news_gwzx col-md-4">
							<div class="news_tzgg_title">
								<font>项目研讨会</font><span><a href="seminarshow/all/1">更多</a></span>
							</div>
						<div class="news_gwzx_content">
							<ul>
							<c:forEach items="${seminarList}" var="semi"  begin="0" end="4">
							<li><a href="details/seminarshow/${semi.seminar_id}">
							<img src="${ctx }/resources/img/index/news_list_ico.png">
							${semi.seminar_title}</a><span class="first_semi">发布人:</span><span>${semi.username}</span><span>&nbsp |&nbsp发布时间:</span><span>${semi.publish_time}</span></li>
						   </c:forEach>
							</ul>
						</div>
					</div>
				</div>
				<div class="row">
					<div class="news_box1 col-md-4">
						<div class="news_tzgg">
							<div class="news_tzgg_title">
								<font>数据下载</font><span><a href="dataSetshow/all/1">更多</a></span>
							</div>
							<div class="news_tzgg_content">
								<ul>
								<c:forEach items="${datasetList}" var="data" begin="0" end="3">
							<li><a href="details/datasetshow/${data.dataset_id}">
							<img src="${ctx }/resources/img/index/news_list_ico.png">
							${data.dataset_name}</a>
							<span style="margin-left:30px">发布人:</span><span>${data.username}</span><span>&nbsp | &nbsp 发布时间:</span><span>${data.publish_time}</span></li>
						   </c:forEach>
								</ul>
							</div>
						</div>
					</div>
					<div class="news_mrjq col-md-4">
						<div class="news_tzgg_title">
							<font>项目成果</font><span><a href="achievementshow">更多</a></span>
						</div>
						<div class="news_tzgg_content">
							<ul>
							<li><a href="details/journalpapershow/${journalpaper.paper_id}" >
							<img src="${ctx }/resources/img/index/news_list_ico.png">
							${journalpaper.paper_name}</a>
							<span style="margin-left:30px">期刊论文&nbsp | &nbsp 发布时间:</span><span>${journalpaper.publish_time}</span>
							</li>
							
							<li><a href="details/conferencepapershow/${conferencepaper.paper_id}" >
							<img src="${ctx }/resources/img/index/news_list_ico.png">
							${conferencepaper.paper_name}</a>
							<span style="margin-left:30px">会议论文&nbsp | &nbsp 发布时间:</span><span>${conferencepaper.publish_time}</span>
			 				</li>
							
							<li><a href="details/patentshow/${patent.patent_id}" >
							<img src="${ctx }/resources/img/index/news_list_ico.png">
							${patent.patent_name}</a>
							<span style="margin-left:30px">专利成果&nbsp | &nbsp  发布时间:</span><span>${patent.publish_time}</span>
							</li>
							
							<li><a href="details/softcopyrightshow/${softcopyright.softcopyright_id}" >
							<img src="${ctx }/resources/img/index/news_list_ico.png">
							${softcopyright.softcopyright_name}</a>
							<span style="margin-left:30px">软件著作 &nbsp | &nbsp发布时间:</span><span>${softcopyright.publish_time}</span>
							</li>
							</ul>
						</div>
					</div>
					<div class="news_box3 col-md-4">

						<div class="news_wzdh">
						<div class="news_tzgg_title">
								<font>友情链接</font><span></span>
							</div>
							<div class="news_wzdh_content">
							    <button type="button" class="btn btn-default btn-lg btn-block"><a href="http://www.sem.tsinghua.edu.cn/" target="_blank">清华大学经济管理学院</a></button>
							    <button type="button" class="btn btn-default btn-lg btn-block"><a href="http://www.fdsm.fudan.edu.cn/" target="_blank">复旦大学管理学院</a></button>
							    <button type="button" class="btn btn-default btn-lg btn-block"><a href="http://som.hit.edu.cn/" target="_blank">哈尔滨工业大学管理学院</a></button>
							    <button type="button" class="btn btn-default btn-lg btn-block"><a href="http://glxy.swjtu.edu.cn/" target="_blank">西南交通大学经济管理学院</a></button>
							    <button type="button" class="btn btn-default btn-lg btn-block"><a href="http://som.hfut.edu.cn/" target="_blank">合肥工业大学管理学院</a></button>
							    <button type="button" class="btn btn-default btn-lg btn-block"><a href="http://www.autobrandcn.com/" target="_blank">汽车品牌管理系统</a></button>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<%@ include file="footer.jsp"%>
	<script src="${ctx }/resources/js/jquery.min.js"></script>
	<script src="${ctx }/resources/js/bootstrap.min.js"></script>
	<script src="${ctx }/resources/js/owl.carousel.min.js"></script>
	<script type="text/javascript">
  //首页图片轮换js
    $(document).ready(function(){
      $(".owl-carousel").owlCarousel({
        animateOut: 'fadeOut',
        animateIn: 'fadeIn',
        items:1,
        autoplaySpeed:1000,
        smartSpeed:450,
        loop:true,
        autoplay:true,
        autoplayTimeout:3000,
        autoplayHoverPause:true,
      });
    });
    
    </script>

</body>
</html>