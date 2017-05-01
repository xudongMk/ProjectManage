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

<title>学术会议管理</title>
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
						<font>学术会议管理</font>
					</div>
					<div class="list_pic_con_content">
			<table class="table table-hover">
            <tr><th>学术会议</th><th>举行时间</th><th>发布时间</th><th>删除</th></tr>
          <c:forEach items="${list}" var="list" begin="0" >
			<tr><td>${list.conference_name}</td><td>${list.conference_date}</td>
			<td>${list.publish_time}</td><td><button type="button" class="btn btn-danger btn-sm" data-id="${list.conference_id}">删除</button></td></tr>							
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
						<font>添加学术会议</font>
					</div>
					<div class="alert alert-success hidden" role="alert">新记录添加成功,1秒后页面跳转</div>
                    <div id="alert"></div>
					<div class="list_pic_con_content">
						<div class="form-group">
							<label class="col-sm-2 control-label">会议名称</label>
							<div class="col-sm-10">
								<input class="form-control" id="conference_name">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">举办时间</label>
							<div class="col-sm-10">
								<input class="form-control dateLocal" id="conference_date" type="date"
									value="2017-01-01" />

							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">会议等级</label>
							<div class="col-sm-10">
								<select class="form-control" id="conference_level">
									<option>国内会议</option>
									<option>国外会议</option>
								</select> 
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">举办地点</label>
							<div class="col-sm-10">
								<input class="form-control" id="conference_place">
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">会议参与人员</label>
							<div class="col-sm-10">
								<textarea class="form-control" rows="3" id="conference_staff"></textarea>
							</div>
						</div>
						<div class="form-group">
							<label class="col-sm-2 control-label">会议介绍</label>
							<div class="col-sm-10">
								<textarea class="form-control" rows="3" id="conference_info"></textarea>
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
								<button type="submit" class="btn btn-default"
									onclick="add_conference()">确认</button>
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
	<script type="text/javascript">
	
	
		$(".manage").on('click', '.btn-danger', function() {
			var id = $(this).data('id');
			var name = $(this).parent().siblings("td:first").text();
			if(!confirm("你确定要删除" + name + "吗？"))
				return;
			$.ajax({
				url : 'deleteMeeting',
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
	  	
	  	function add_conference() {
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
		    	
		    	function submitinfo() {        
	          var category = "conference";
	          var conference_name = $("#conference_name").val();
	          var conference_date = $("#conference_date").val();
	          var conference_level=$('select[id=conference_level]').val();
	          var conference_place = $("#conference_place").val();
	          var conference_staff = $("#conference_staff").val();
	          var conference_info = $("#conference_info").val();

	          $.ajax({
	            type : "post",
	            url : "addConference",
	            data : {
	              conference_name : conference_name,
	              conference_date : conference_date,
	              conference_level : conference_level,
	              conference_place : conference_place,
	              conference_staff : conference_staff,
	              conference_info:conference_info,
	              img_id:b,
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
		    }
	
	</script>


</body>
</html>
