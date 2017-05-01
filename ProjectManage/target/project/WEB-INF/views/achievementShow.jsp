<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var = "ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>成果展示</title>

    <!-- Bootstrap -->
    <link href="resources/css/bootstrap.min.css" rel="stylesheet">
	<link rel="stylesheet" type="text/css" href="resources/css/cssTest.css" />

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="http://cdn.bootcss.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="http://cdn.bootcss.com/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
  </head>
  <body>
  <div class="container">
  <!-- Bootstrap -->
<nav class="navbar navbar-default" role="navigation">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#">项目管理</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
    <ul class="nav navbar-nav">
        <li><a href="projectshow">项目交流</a></li>
        <li><a href="meetingshow">参加会议</a></li>
        <li><a href="dataSetshow">数据集</a></li>
		<li ><a href="algorithmshow">算法</a></li>
		<li  class="active"><a href="achievementshow">成果展示</a></li>      
      </ul>
      <form class="navbar-form navbar-left" role="search">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>     
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
  </nav>

   <table class="table table-hover" id="achievementList_show"></table>
  </div>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
	 <script type="text/javascript">  
			$(document).ready(function() {
				$.ajax({
					url : 'getAchievementList',
					type : 'GET',
					dataType: 'json',
					 success : function(data) {
		            	 $("#achievementList_show").html("");
		     			console.log(data);
		     		    var data = eval(data);
		     			var str = "<tr><th>名称</th><th>简介</th><th>发布人</th><th>发布单位</th>	<th>发布时间</th></tr><tr>"
		     			for (var i = 0;i <data.length;i++){
		     				str = str + "<td>" + data[0].achievement_name 
		                    + "</td><td>" + data[0].achievement_introduction 
		                    + "</td><td>" + "som" 
		                    + "</td><td>" + "HFUT" 
		                    + "</td><td>" + data[0].achievement_pub_time 
		                    + "</td>";
		                    str = str + "</tr>";
		     			}   			
		     			
		              $("#achievementList_show").html(str);
		     		},
					error : function() {
						alert("请求出错！");
					}
				})
			});
		</script>
  </body>
</html>