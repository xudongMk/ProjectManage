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
    <title>数据管理</title>

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
        <li class="active"><a href="dataSet">数据管理</a></li>
		<li><a href="algorithm">算法管理</a></li>
		<li><a href="achievemen">成果展示</a></li>
      
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
  
  <h1>上传数据</h1>

  <div class="form-group">
    <label  class="col-sm-2 control-label" >数据名</label>
    <div class="col-sm-10">
      <input  class="form-control" id="data_name">
    </div>
  </div>
    <div class="form-group">
    <label  class="col-sm-2 control-label">数据简介</label>
    <div class="col-sm-10">
      <textarea class="form-control" rows="3" placeholder="Text input" id="data_info"></textarea>
    </div>
  </div>
  
    <div class="form-group">
    <label  class="col-sm-2 control-label">数据所属领域</label>
    <div class="col-sm-10">  
 
  <select class="form-control" id="data_domain">
  <option>1</option>
  <option>2</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
</select>
</div>
 </div>
  

    <div class="form-group">
    <label  class="col-sm-2 control-label">数据结构</label>
       <div class="col-sm-10">  
 
  <select class="form-control" id = "data_struct">
  <option>txt</option>
  <option>rar</option>
  <option>3</option>
  <option>4</option>
  <option>5</option>
</select>
</div>
  </div>
  
    <div class="form-group">
    <label  class="col-sm-2 control-label">数据下载</label>
    <div class="col-sm-10">
      <input class="form-control" id="data_url">
    </div>
  </div>
  
    <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">确认</button>
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
			
			var data_name=$("#data_name").val();
			var data_info=$("#data_info").val();
			var data_domain=$('select[id=data_domain]').val();
			var data_struct=$('select[id=data_struct]').val();;
			var data_url=$("#data_url").val();
			alert(data_domain);	
            $.ajax({
				type : "post",
				url : "addDataSet",
				data : {					
					data_name:data_name,
					data_info:data_info,
					data_domain:data_domain,
					data_struct:data_struct,
					data_url:data_url,
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