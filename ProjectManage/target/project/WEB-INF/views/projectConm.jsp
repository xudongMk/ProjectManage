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
    <title>项目交流</title>

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
        <li class="active"><a href="projectConm">项目交流</a></li>
        <li><a href="dataSet">数据管理</a></li>
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
  <h1>添加项目交流</h1>

  <div class='nav list'>
  
  <ul class="nav nav-tabs nav-justified" role="tablist">
  <li role="presentation"><a href="#tab-workshop" aria-controls="home"
				role="tab" data-toggle="tab">项目研讨会</a></li>
  <li role="presentation"><a href="#tab-conference" 
				role="tab" data-toggle="tab">国内外学术会议</a></li>
</ul>
<div class="tab-content" id="tab-list">
<div role="tabpanel" class="tab-pane active" id="tab-workshop">
				<div class="row feature">
				  <div class="form-group">
    <label  class="col-sm-2 control-label">标题</label>
    <div class="col-sm-10">
      <input class="form-control" id = "workshop_name">
    </div>
  </div>
   
   <div class="form-group">
    <label  class="col-sm-2 control-label">研讨会举行日期</label>
    <div class="col-sm-10">
	  <input  class="form-control" id="workshop_date" type="date" value="2016-12-14"/>
    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">研讨会举行地点</label>
    <div class="col-sm-10">
      <input  class="form-control"  id = "workshop_place" >
    </div>
  </div>
  <div class="form-group">
    <label  class="col-sm-2 control-label">研讨会讨论内容</label>
    <div class="col-sm-10">
      <textarea class="form-control" rows="3"  id = "workshop_content"></textarea>
    </div>
  </div>	       
    <div class="form-group">
    <label  class="col-sm-2 control-label" >参与人员</label>
    <div class="col-sm-10">
      <textarea class="form-control" rows="3" id = "workshop_staff"></textarea>
    </div>
  </div>
  
      <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">确认</button>
    </div>
  </div>
					
				</div>
			</div>
<div role="tabpanel" class="tab-pane" id="tab-conference">
				<div class="row feature">
					
     <div class="form-group">
    <label  class="col-sm-2 control-label">会议名称</label>
    <div class="col-sm-10">
      <input  class="form-control"  id = "conference_name" >
    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label">会议举办时间</label>
    <div class="col-sm-10">
	  <input  class="form-control" id="conference_date" type="date" value="2016-12-14"/>

    </div>
  </div>
   <div class="form-group">
    <label  class="col-sm-2 control-label" >会议等级</label>
    <div class="col-sm-10">
      <input  class="form-control" id = "conference_level">
    </div>
  </div>
    <div class="form-group">
    <label  class="col-sm-2 control-label">会议举办地点</label>
    <div class="col-sm-10">
      <input  class="form-control"  id = "conference_place">
    </div>
  </div>
  <div class="form-group">
    <label  class="col-sm-2 control-label">会议参与人员</label>
    <div class="col-sm-10">
      <textarea class="form-control" rows="3"  id = "conference_staff"></textarea>
    </div>
  </div>
    <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">确认</button>
    </div>
  </div>
				</div>
			</div>
</div>
</div>
</div>    

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	$(document).ready(function() {
			$("div#tab-workshop button").click(function() {
			var category = "workshop";
			var workshop_name=$("#workshop_name").val();
			var workshop_date=$("#workshop_date").val();
			var workshop_place=$("#workshop_place").val();
			var workshop_content=$("#workshop_content").val();
			var workshop_staff=$("#workshop_staff").val();
			alert(workshop_date);
          $.ajax({
				type : "post",
				url : "addSeminar",
				data : {					
					category:category,
					workshop_name:workshop_name,
					workshop_date:workshop_date,
					workshop_place:workshop_place,
					workshop_content:workshop_content,
					workshop_staff:workshop_staff,
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
            $("div#tab-conference button").click(function(){
            var category = "conference";
			var conference_name= $("#conference_name").val();
			var conference_date= $("#conference_date").val();
			var conference_level= $("#conference_level").val();
			var conference_place= $("#conference_place").val();
			var conference_staff= $("#conference_staff").val();
            alert(conference_date);
			 $.ajax({
				type : "post",
				url : "addMeeting",
				data : {					
					category:category,
			        conference_name:conference_name,
			        conference_date:conference_date,
			        conference_level:conference_level,
			        conference_place:conference_place,
			        conference_staff:conference_staff,
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