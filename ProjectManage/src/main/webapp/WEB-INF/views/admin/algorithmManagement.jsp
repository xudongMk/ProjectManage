<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx"
	value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
<meta name="renderer" content="webkit">
<!--国产浏览器高速模式-->
<meta name="viewport" content="width=device-width, initial-scale=1">

<title>算法管理</title>
<!-- 基础样式文件 开始 -->
<link href="${ctx }/resources/css/bootstrap.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/resources/css/base.css" rel="stylesheet"
	type="text/css">
<link href="${ctx }/resources/css/index.css" rel="stylesheet"
	type="text/css">
<!-- 基础样式文件结束 -->
<style type="text/css">
.hidden {
	display: none;
}
.list_pic_con_title font{
width:100px
}
.list_pic_con_content .control-label{
margin-top:15px;
}
.list_pic_con_content .col-sm-10{
margin-top:15px;
}
.error{
color:red;
}
</style>
<!-- 基础JS文件 开始 -->
<script type="text/javascript" src="${ctx }/resources/js/jquery.js"></script>
<script type="text/javascript"
	src="${ctx }/resources/js/bootstrap.min.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/base.js"></script>
<script type="text/javascript" src="${ctx }/resources/js/index.js"></script>
</head>
<body>

	<%@ include file="../top.jsp"%>
	<div class="main">
		<div class="main_box">
			<div class="logo"></div>
			<%@ include file="../nav.jsp"%>
			<div class="list_main">
				<!-- hot 开始 -->
				<%@ include file="nav_left.jsp"%>
				<!-- hot 结束 -->
				<!-- list_con 开始 -->
				<div class="list_pic_con manage">
					<div class="list_pic_con_title">
						<font>算法管理</font>
					</div>
					<div class="list_pic_con_content">
						<table class="table table-hover">
            <tr><th>算法名称</th><th>算法作者</th><th>发布时间</th><th>删除</th></tr>
          <c:forEach items="${list}" var="list" begin="0" >
			<tr><td>${list.algorithm_name}</td><td>${list.algorithm_author}</td>
			<td>${list.publish_time}</td><td><button type="button" class="btn btn-danger btn-sm" data-id="${list.algorithm_id}">删除</button></td></tr>							
		  </c:forEach>
          </table>
           <a href="javascript:void(0)"><button type="button" onclick="add()"
								class="btn btn-default btn-lg">
								<span class="glyphicon glyphicon-plus-sign"></span>添加
							</button></a>
					</div>
				</div>
				<div class="list_pic_con add hidden">
					<div class="list_pic_con_title">
						<font>添加算法共享</font>
					</div>
					<div class="alert alert-success hidden" role="alert">新记录添加成功,1秒后页面跳转</div>
                    <div id="alert"></div>
					<div class="list_pic_con_content">
		<div class="form-group">
			<label class="col-sm-2 control-label">算法名称</label>
			<div class="col-sm-10">
				<input class="form-control" name="algorithm_name" id="algorithm_name" required>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">算法作者</label>
			<div class="col-sm-10">
				<input class="form-control" name="algorithm_author" id="algorithm_author">
			</div>
		</div>

		<div class="form-group">
			<label class="col-sm-2 control-label">相关论文</label>
			<div class="col-sm-10">
				<input class="form-control" name="algorithm_paper" id="algorithm_paper">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">相关数据</label>
			<div class="col-sm-10">
				<input class="form-control" name="algorithm_data" id="algorithm_data">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">源码链接</label>
			<div class="col-sm-10">
				<input class="form-control" name="algorithm_link" id="algorithm_link">
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">算法简介</label>
			<div class="col-sm-10">
				<textarea class="form-control" rows="3" placeholder="Text input"
					name="algorithm_info" id="algorithm_info"></textarea>
			</div>
		</div>
		<div class="form-group">
			<label class="col-sm-2 control-label">上传图片</label>
				
			<div class="col-sm-10">
				<label class="custom-file"> <input type="file" id="file"
					name="file" class="custom-file-input"> <span
					class="custom-file-control"></span>
				</label>
			</div>
		</div>
		
		<div class="form-group">
			<div class="col-sm-offset-2 col-sm-10">
				<button type="button" onclick="add_algorithm()" class="btn btn-default"
					>确认</button>
			</div>
		</div>

				</div>
			</div>
		</div>
	</div>
	</div>



	<script src="${ctx}/resources/js/jquery.min.js"></script>
	<script src="${ctx}/resources/js/bootstrap.min.js"></script>
	<script src="${ctx}/resources/js/manage.js"></script>
	 <script src="${ctx}/resources/js/jquery.validate.js"></script>
	 <script src="${ctx}/resources/js/messages_zh.min.js"></script>
	<script type="text/javascript">
		$(".manage").on('click', '.btn-danger', function() {
			var id = $(this).data('id');
			var name = $(this).parent().siblings("td:first").text();
			if(!confirm("你确定要删除" + name + "吗？"))
				return;
			$.ajax({
				url : 'deleteAlgorithm',
				type : 'POST',
				data : {
					'id' : id,
				},

				success : function(mes) {
					if (mes == 1) {
						window.location.reload(); 
					} else {
						alert("删除失败！");
					}
				}
			})
		});
		
		var b = "upload_default.jpg";    	  
	  	$(':file').change(function(){
	        var file = this.files[0];
	        if(file == null){
	        	b = "upload_default.jpg"; 
	        	return;
	        }
	        sampleDataName = file.name;
	        var form = new FormData();
	        form.append("file", file);  
	        var xhr = new XMLHttpRequest();
	        xhr.open("post", "upload_sample_data", true);
	        xhr.onload = function () {
	            b = xhr.responseText;
	        };
	        xhr.send(form);            
	      });
	  			
		    	function add_algorithm() {
		    		var bool = true;
		    		$(".add input").each(function(){
				          if($.trim($(this).val()) == "" && bool && $(this).attr("id") != "file")
				          {
				              var mes =$(this).parent().siblings("label").text();
				              bool=false;
				              alert(mes+"字段不能为空！"); 
				              return;
				          }
				          
				     }
		    		);
		    		
		    		if(bool){
		    			submitinfo();
		    		}};
		    		
		    		function submitinfo(){
					var algorithm_name = $("#algorithm_name").val();
					var algorithm_info = $("#algorithm_info").val();
					var algorithm_author = $("#algorithm_author").val();
					var algorithm_paper = $("#algorithm_paper").val();
					var algorithm_data = $("#algorithm_data").val();
                    var algorithm_link = $("#algorithm_link").val(); 
					$.ajax({
						type : "post",
						url : "addAlgorithm",
						data : {
							algorithm_name:algorithm_name,
							algorithm_info:algorithm_info,
							algorithm_author:algorithm_author,
							algorithm_paper:algorithm_paper,
							algorithm_data:algorithm_paper,
							algorithm_link:algorithm_link,
							img_id:b
						},

						success : function(mes) {
							if (mes == 1){
								$(".alert-success").removeClass("hidden");
								setTimeout(function () {
									window.location.reload();
							    }, 1000);
							
							}
							else{
								var str="<div class='alert alert-danger alert-dismissible' role='alert'>"
								+ "<button type='button' class='close' data-dismiss='alert'><span aria-hidden='true'>&times;</span>"
								+"<span class='sr-only'>Close</span></button><strong>Warning!</strong>添加失败</div>"
							   $("#alert").html(str);
							}				
								}	
					});
				};
				
				
		
	</script>


</body>
</html>
