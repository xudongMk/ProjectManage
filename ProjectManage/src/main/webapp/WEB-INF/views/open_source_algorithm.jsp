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
<title>开源算法</title>

<!-- Bootstrap -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="resources/css/cssTest.css" />
<link href="${ctx}/resources/css/bootstrap.min.css" rel="stylesheet">

</head>

<body>
<%@ include file="nav.jsp"%>
  <div class="container">
    <h1>添加开源算法信息</h1>

    <div class='nav list'>

      <div class="tab-content" id="tab-list">
        
        <div role="tabpanel" class="tab-pane active" id="tab-conference">
          <div class="row feature">

            <div class="form-group">
              <label class="col-sm-2 control-label">算法名称</label>
              <div class="col-sm-10">
                <input class="form-control" id="algorithm_name">
              </div>
            </div>
            
            <div class="form-group">
              <label class="col-sm-2 control-label">算法类别</label>
              <div class="col-sm-10">
                <input class="form-control" id="algorithm_type">
              </div>
            </div>
            
            <div class="form-group">
              <label class="col-sm-2 control-label">开源工具</label>
              <div class="col-sm-10">
                <input class="form-control" id="algorithm_tool">
              </div>
            </div>
            
            <div class="form-group">
              <label class="col-sm-2 control-label">编程语言</label>
              <div class="col-sm-10">
                <input class="form-control" id="algorithm_language">
              </div>
            </div>
           
            <div class="form-group">
              <label class="col-sm-2 control-label">参数</label>
              <div class="col-sm-10">
                <input class="form-control" id="algorithm_parameter">
              </div>
            </div>
           
            <div class="form-group">
              <label class="col-sm-2 control-label">输入数据格式</label>
               
              <div class="col-sm-10">
                <label class="custom-file">
                  <input type="file" id="file" name="file" class="custom-file-input">
                  <span class="custom-file-control"></span>
                </label>
              </div>
            </div>
            
            <div class="form-group">
              <label class="col-sm-2 control-label">运行方法</label>
              <div class="col-sm-10">
                <textarea class="form-control" rows="3"
                  id="algorithm_method"></textarea>
              </div>
            </div>
            
            <div class="form-group">
              <div class="col-sm-offset-2 col-sm-10">
                <button type="button" onclick="add_open_source_algorithm()" class="btn btn-primary active">输出</button>
              </div>
            </div>
            
          </div>
        </div>
      </div>
    </div>
  </div>
<!--  <form action="/addOpenAlgorithm" method="post">
	worldhello:<input type="text" name="algorithm_name"/>	
	
	<input type="submit" name="提交"/>
 </form> -->
   <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="resources/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="resources/js/bootstrap.min.js"></script>
    <script src="resources/js/jquery.ajaxfileupload.js"></script>
    <script src="resources/layer/layer.js"></script>
    
    	<script type="text/javascript">
    	var b;
    	var sampleDataName;
    	$(':file').change(function(){
          var file = this.files[0];
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
    	
    	function add_open_source_algorithm() {			
			var algorithm_name=$("#algorithm_name").val();
			var algorithm_type=$("#algorithm_type").val();
			var algorithm_tool=$("#algorithm_tool").val();
			var algorithm_language=$("#algorithm_language").val();
			var algorithm_parameter=$("#algorithm_parameter").val();
			var algorithm_data_format=$("#algorithm_data_format").val();
			var algorithm_method=$("#algorithm_method").val();
			
			$.ajax({
				type : "post",
				url : "addOpenAlgorithm", 
				
				data : {					
					algorithm_name:algorithm_name,
					algorithm_type:algorithm_type,
					algorithm_tool:algorithm_tool,
					algorithm_language:algorithm_language,
					algorithm_parameter:algorithm_parameter,
					algorithm_data_format:algorithm_data_format,
					algorithm_method:algorithm_method, 
					sampleDataName:sampleDataName,
				
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
		}
	</script>
    
</body>
</html>