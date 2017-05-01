<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="sec"	uri="http://www.springframework.org/security/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="${ctx}" style="font-size:20px;color:#FFFFFF">大数据项目管理系统</a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li id="data"><a href="${ctx}/project">研讨会管理</a></li>
        <li id="algorithmManagement"><a href="${ctx}/conferenceManagement">会议管理</a></li>
        <li id="brandmanage"><a href="${ctx}/dataManagement">数据管理</a></li>
        <li id="projectmanage"><a href="${ctx}/algorithmManagement">算法管理</a></li>
        <li class="dropdown">
          <a class="dropdown-toggle" data-toggle="dropdown">成果管理<span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
            <li><a href="${ctx}/conferencepaperManagement">会议论文管理</a></li>
            <li><a href="${ctx}/journalpaperManagement">期刊论文管理</a></li>
		   <li class="divider"></li>
            <li><a href="${ctx}/patentManagement">专利管理</a></li>
		   <li class="divider"></li>
			<li><a href="${ctx}/softcopyrightManagement">软著管理</a></li>         
           </ul>
        </li>
      </ul>
        
      <ul class="nav navbar-nav navbar-right">
        
        <sec:authorize access="isAuthenticated()">
              <li>
                <a id="username" href="${ctx}/project"><sec:authentication property="name" /></a>
              </li>
              
              <li><a href="${ctx}/logout" style="margin-left: 15px;">注销</a></li>
        </sec:authorize>

        <sec:authorize access="!isAuthenticated()">
                <a href="${ctx }/signin"><input
                  type="submit" value="登 录"
                  style="width: 110px; vertical-align: middle;" class="button_ok" /></a>
        </sec:authorize>
      </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
