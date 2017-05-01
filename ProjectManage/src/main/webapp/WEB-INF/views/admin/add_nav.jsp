<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>

   <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">项目管理</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${ctx}" style="font-size:24px;color:#fff">大数据项目管理系统</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li id="data"><a href="${ctx}/projectConm">添加研讨会</a></li>
        <li id="algorithm"><a href="${ctx}/conference">添加会议</a></li>
        <li id="brandmanage"><a href="${ctx}/dataSet">添加数据</a></li>
        <li id="projectmanage"><a href="${ctx}/algorithm">添加算法</a></li>
     
		<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown">成果展示<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="conferencepaper">添加会议论文</a></li>
            <li><a href="journalpaper">添加期刊论文</a></li>
			   <li class="divider"></li>
            <li><a href="patent">添加专利</a></li>
			   <li class="divider"></li>
			<li><a href="softcopyright">添加软著</a></li>         
           </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav navbar-right">
        <li>
            <a id="brandmanage" href="/brandmanage">汽车品牌管理系统</a>
          </li>
          <li>
            <a>|</a>
          </li>
          <sec:authorize access="isAuthenticated()">
            <li>
              <a id="username" href="${ctx}/projectConm"><sec:authentication property="name" /></a>
            </li>
            
            <li><a href="${ctx}/logout" style="margin-left: 15px;">注销</a></li>
          </sec:authorize>
  
          <sec:authorize access="!isAuthenticated()">
            <li><a href="${ctx }/signin">登录</a></li>
          </sec:authorize>

      </ul>
    </div>
  </div>
</nav>
