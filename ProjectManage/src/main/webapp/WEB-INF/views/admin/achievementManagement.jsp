<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Dashboard</title>

<!-- Bootstrap -->
<link href="${ctx}/resources/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/cssTest.css" />
<link rel="stylesheet" type="text/css" href="${ctx}/resources/css/showPage.css" />
</head>
<body>
  <%@ include file="nav.jsp"%>

  <div class="container">
    <div class="tab-content" id="tab-list">
      <div role="tabpanel" class="tab-pane active" id="tab-achievement">
        <div class="row feature">
          ${list }
          <table class="table table-hover" id="achievement">
          </table>
          <a href="achievement"><button type="button"
              class="btn btn-default btn-lg">
              <span class="glyphicon glyphicon-plus-sign"></span>添加
            </button></a>
        </div>
      </div>
    </div>
  </div>

  <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
  <script src="${ctx}/resources/js/jquery.min.js"></script>
  <!-- Include all compiled plugins (below), or include individual files as needed -->
  <script src="${ctx}/resources/js/bootstrap.min.js"></script>
   <script src="${ctx}/resources/js/jquery.validate.js"></script>
  <script type="text/javascript">
  $(".container").on('click','.btn-danger',function(){
	  var id =$(this).data('id');
  	 var name = $(this).parent().siblings("td:first").text();
  	 alert("你确定要删除"+name+"吗？");
  	  $.ajax({
         url : 'deleteAchievement',
  		type : 'POST',
  		data:{
  			'id':id,
  		},
  		
  	   success : function(mes) {
           if (mes == 1) {
             location.href = '${ctx}/algorithmshow';
           } else {
             alert("删除失败！");
           }
         }
  		
       })

     });
         
    </script>


</body>
</html>
