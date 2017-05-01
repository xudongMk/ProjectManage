<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<div class="top">
	<div class="top_box">
		你好，欢迎访问大数据环境下的商务管理研究项目主页！&nbsp;&nbsp;&nbsp;&nbsp; 
		<div style="float:right">
		<sec:authorize access="isAuthenticated()"><sec:authentication property="name" />
            <a id="username" href="${ctx}/project" style="margin-left:15px;">管理后台</a>
            <a href="${ctx}/logout" style="margin-left: 15px;">注销</a>
          </sec:authorize>
  
          <sec:authorize access="!isAuthenticated()">
            <a href="${ctx }/signin">登录</a>
          </sec:authorize>
          </div>
	</div>
</div>