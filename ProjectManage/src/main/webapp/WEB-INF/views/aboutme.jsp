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
		
		<title>下载中心</title>
		<!-- 基础样式文件 开始 -->
		<link href="${ctx }/resources/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="${ctx }/resources/css/base.css" rel="stylesheet" type="text/css">
		<link href="${ctx }/resources/css/index.css" rel="stylesheet" type="text/css">
	<style>
	.hidden{
		display:none;
		}
		.list_pic_con_content p{
		font-size:16px;
		margin:0;
		padding:20px;
		}
		.list_pic_con_content hr{
		margin:0;
		}
.pdfobject-container { height: 800px;margin:70px;}
.pdfobject {  border: 1px solid #666; }

</style>
	</head>

	<body>
		<!-- top 开始 -->
	<%@ include file="top.jsp"%>
		<!-- top 结束 -->
		
		<!-- main 开始 -->
		<div class="main">
			<div class="main_box">

				<!-- logo 开始 -->
				<div class="logo"></div>
				<!-- logo 结束 -->
               <%@ include file="nav.jsp"%>
				<!-- banner 开始 -->
				
				<!-- address 开始 -->
				<div class="address">
					<a href=${ctx }>首页</a><a>：</a><a href="${ctx }/aboutme">下载中心</a>
				</div>
				<div class="list_main">
					<!-- hot 开始 -->
					<div class="hot">
						<div class="hot_title">
							文档下载
						</div>
						<div class="hot_content">
							<div class="hot_content_box">
								<div class="hot_content_box_content">
									<ul>
										<li><a href="${ctx }/aboutme">全部</a></li>
									</ul>
								</div>
							</div>
											
						</div>
					</div>
					<!-- hot 结束 -->
					<!-- list_con 开始 -->
					<div class="list_pic_con">
						<div class="list_pic_con_title">
							<font>文档下载</font>
						</div>
						<div class="list_pic_con_content">
							<p><span class="glyphicon glyphicon-file"></span><a href="javascript:void(0)" onclick="showdoc()">  基础算法开源文档</a></p>						
						    <hr/>
						</div>
						<div id="example1"></div>
					</div>
					<!-- hot 结束 -->
				</div>
				<div id="docshow" class="hidden"></div>
				<!-- list_main 结束 -->
				<!-- list_main 结束 -->
	<%@ include file="footer.jsp" %>
			</div>
		</div>
		<!-- main 结束 -->
		<script type="text/javascript" src="${ctx }/resources/js/jquery.js"></script>
<script src="${ctx }/resources/js/pdfobject.js"></script>
<script type="text/javascript">
function showdoc(){
	 $(".list_main").addClass("hidden");
	 $("#docshow").removeClass("hidden");
	 PDFObject.embed("${ctx }/resources/doc/open_source_al.pdf", "#docshow");
	 if(PDFObject.supportsPDFs){
		} else {
		   console.log("Boo, inline PDFs are not supported by this browser");
		}
}
function showdoc2(){
	 $(".list_main").addClass("hidden");
	 $("#docshow").removeClass("hidden");
	 PDFObject.embed("${ctx }/resources/doc/keti5.pdf", "#docshow");
	 if(PDFObject.supportsPDFs){
		} else {
		   console.log("Boo, inline PDFs are not supported by this browser");
		}
}

</script>
	</body>

</html>