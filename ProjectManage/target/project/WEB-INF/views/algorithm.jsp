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
    <title>算法管理</title>
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
      <a class="navbar-brand" href="dashboard.html">项目管理</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
     <ul class="nav navbar-nav">
        <li><a href="projectConm">项目交流</a></li>
        <li><a href="dataSet">数据管理</a></li>
		<li  class="active"><a href="algorithm">算法管理</a></li>
		<li><a href="achievemen">成果展示</a></li>
      
      </ul>
        </li>
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
  
  <h1>上传算法</h1>

    <div class="form-group">
    <label  class="col-sm-2 control-label">算法标题</label>
    <div class="col-sm-10">
      <input class="form-control" id="algorithm_name">
    </div>
  </div>
  <div class="form-group">
    <label  class="col-sm-2 control-label">算法简介</label>
    <div class="col-sm-10">
      <textarea class="form-control" rows="3" placeholder="Text input" id="algorithm_info"></textarea>
    </div>
  </div>
  <div class="form-group">
    <label  class="col-sm-2 control-label">作者</label>
    <div class="col-sm-10">
      <input class="form-control" id="algorithm_author">
    </div>
  </div>
  
   <div class="form-group">
    <label  class="col-sm-2 control-label">相关论文</label>
    <div class="col-sm-10">
      <input class="form-control" id="algorithm_paper">
    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">相关数据</label>
    <div class="col-sm-10">
      <input class="form-control" id="algorithm_data">
    </div>
  </div>

 
    <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="button" class="btn btn-default">确认</button>
    </div>
  </div>

 
  </div>    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
			$("button").click(function() {			
			var algorithm_name=$("#algorithm_name").val();
			var algorithm_info=$("#algorithm_info").val();
			var algorithm_author=$("#algorithm_author").val();
			var algorithm_paper=$("#algorithm_paper").val();
			var algorithm_data=$("#algorithm_data").val();
			alert(algorithm_author);
			$.ajax({
				type : "post",
				url : "addAlgorithm",
				data : {					
					algorithm_name:algorithm_name,
					algorithm_info:algorithm_info,
					algorithm_author:algorithm_author,
					algorithm_paper:algorithm_paper,
					algorithm_data:algorithm_data,
						},							
				
				success : function(mes) {
				if (mes == 1){
				alert("添加成功！");
				location.href='project';
				}
				else{
				alert("添加失败！");
				}				
					}	
			});	
		});             		
		});
	</script>
  </body>
</html>