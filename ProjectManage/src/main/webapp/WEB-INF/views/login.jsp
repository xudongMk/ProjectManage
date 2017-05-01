<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html lang="zh">
<head>
<base href="<%=basePath%>">   
<meta http-equiv="content-type" content="text/html; charset=utf-8" />
<title>项目管理系统|用户登陆</title> 
<meta name="description" content="合肥工业大学电子商务研究所" />

<script src="http://apps.bdimg.com/libs/jquery/2.1.4/jquery.min.js"></script>
<script type="text/javascript" src="resources/js/login.js"></script>
<link href="resources/css/login2.css" rel="stylesheet" type="text/css" />
<link rel="shortcut icon" type="image/x-icon" href="resources/images/ico.ico" />
<script type="text/javascript">
function GetQueryString(name)
{
     var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
     var r = window.location.search.substr(1).match(reg);
     if(r!=null)return  unescape(r[2]); return null;
}
$(function(){
	if (GetQueryString("type")==2|| "${type}"==2){
		$("#switch_login").click();
	}	
});
</script>
</head>
<body>
<h1>大数据项目管理系统<sup>V2016</sup></h1>
<div class="login" style="margin-top:50px;">  
    <div class="header">
        <div class="switch" id="switch">
        <a class="switch_btn_focus" id="switch_register" href="javascript:void(0);" tabindex="7">用户登录</a>
		<div class="switch_bottom" id="switch_bottom" style="position: absolute; width: 64px; left: 0px;"></div>
        </div>
    </div>    
    <!--用户登录模块-->
    <div class="login_all" id="login_all" style="display: block; height: 285px;">    
            
            <div class="web_login" id="web_login">              
            <div class="login-box"> 
			<div class="login_form">
			   <form name="f" action="login" accept-charset="utf-8" id="login_form" class="loginForm" method="post">				
               <div id="attention_alert_login" class="user_attetion">${SPRING_SECURITY_LAST_EXCEPTION.message}</div>
               <div class="uinArea" id="uinArea">
               <label class="input-tips">帐号：</label>
               <div class="inputOuter" id="uArea">
                    <input type="text" id="username" name="username" class="inputstyle"/>
               </div>
               </div>
               <div class="pwdArea" id="pwdArea">
               <label class="input-tips">密码：</label> 
               <div class="inputOuter" id="pArea">                   
                    <input type="password" id="password" name="password" class="inputstyle"/>
               </div>
               </div>  
               <ul><li class="tableArea">
               <input id="remember-me" type="checkbox" name="remember-me"></input>
               <label for="rememberMe">两周内自动登录</label>

               <label for="forgotten" id="forgotten"><a href="#">忘记密码？</a></label>
               </li>
               </ul>          
               <div style="padding-left:50px;margin-top:20px;">
               <input type="submit" value="登 录" style="width:150px;" class="button_ok"/></div>
              </form>
           </div>
          </div>
        </div>  
  </div>  
</div>
<div id="attetion">*本站不提供开放注册功能，用户名密码请联系网站管理员</div>
</body>
</html>