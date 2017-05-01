<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%  
String path = request.getContextPath();  
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";  
%> 
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
  <base href="<%=basePath%>"> 
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Dashboard</title>

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
        <li><a href="#xmjl">项目介绍</a></li>
        <li><a href="#sjgl">数据集</a></li>
		<li><a href="#sfgl">算法</a></li>
		<li><a href="#cggl">成果展示</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">Dropdown <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="#">Action</a></li>
            <li><a href="#">Another action</a></li>
            <li><a href="#">Something else here</a></li>
            <li class="divider"></li>
            <li><a href="#">Separated link</a></li>
            <li class="divider"></li>
            <li><a href="#">One more separated link</a></li>
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
  <h1 id="xmjl">项目交流</h1>
  <table class="table table-hover">
  <tr>
					<th>序号</th>
					<th>名稱</th>
					<th>類型</th>					
					<th>举行日期</th>
					<th>举行地点</th>
					<th>发布人</th>
					<th>发布日期</th>
					<th>操作</th>
				</tr>
				<tr>
					<td>001</td>
					<td>第一次项目研讨会</td>
					<td>项目研讨会</td>
					
					<td>2016-06-01</td>
					<td>合肥</td>
					<td>som</td>
					<td>2016-05-31</td>
					<td>
<a  href="projectConm"><button type="button" class="btn btn-success btn-sm">添加</button></a>
<button type="button" class="btn btn-danger btn-sm">删除</button></td>
				</tr>
				
</table>

  <h1 id="sjgl">数据集管理</h1>
  <table class="table table-hover">
   <tr>
					<th>序号</th>
					<th>名稱</th>
					<th>发布单位</th>
					<th>所属领域</th>
					<th>发布人</th>
					<th>发布时间</th>
					<th>操作</th>
				</tr>
				<tr>
					<td>001</td>
					<td>TEST</td>
					<td>TEST</td>
					<td>TEST</td>
					<td>TEST</td>
					<td>TEST</td>
					<td>

<a  href="dataSet"><button type="button" class="btn btn-success btn-sm">添加</button></a>
<button type="button" class="btn btn-danger btn-sm">删除</button></td>
				</tr>
				</tr>
</table>

  <h1 id="sfgl">算法管理</h1>  
  <table class="table table-hover">
   <tr>
					<th>序号</th>
					<th>标题</th>
					<th>简介</th>
					<th>作者</th>
					<th>发布者</th>
					<th>发布单位</th>
					<th>发布时间</th>
					<th>操作</th>
				</tr>
				<tr>
					<td>001</td>
					<td>TEST</td>
					<td>TEST</td>
					<td>TEST</td>
					<td>TEST</td>
					<td>TEST</td>
					<td>TEST</td>
					<td>
<a  href="algorithm"><button type="button" class="btn btn-success btn-sm">添加</button></a>
<button type="button" class="btn btn-danger btn-sm">删除</button></td>
				</tr>
				</tr>
</table>

  <h1 id="cggl">成果管理</h1>
  <table class="table table-hover">
   <tr>
					<th>序号</th>
					<th>名称</th>
					<th>类型</th>
					<th>所属单位</th>
					<th>发布者</th>
					<th>发布时间</th>
					<th>操作</th>
					
				</tr>
				<tr>
					<td>001</td>
					<td>TEST</td>
					<td>TEST</td>
					<td>TEST</td>
					<td>TEST</td>
					<td>TEST</td>					
					<td>
<a  href="achievement"><button type="button" class="btn btn-success btn-sm">添加</button></a>
<button type="button" class="btn btn-danger btn-sm">删除</button></td>
				</tr>
				</tr>
</table>



    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
			$(".btn.btn-danger.btn-sm").click(function() {
			        var assort = $(this).parents("table").siblings("h1").attr("id");
                    var id = $(this).parent().siblings().eq(0).text();			
                    var name = $(this).parent().siblings().eq(1).text();
                    console.log(assort);					
                    alert("你確定要刪除"+name+"嗎？");	
                $.ajax({
				type : "post",
				url : "ProjectManage/dashboard",
				data : {					
					assort:assort,
					id:id,
						},							
				dataType : "json",
				success : function(mes) {
				if (mes == 1){
				   alert("删除成功");
					location.href='dashboard.jsp';
					}
				    else{
					alert("删除失败！")
                   }					
					}
					
			});					
		});             		
		});
	</script>

	
  </body>
</html>


