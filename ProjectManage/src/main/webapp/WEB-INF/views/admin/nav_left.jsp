<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.contextPath }"></c:set>

<div class="hot">
					<div class="hot_title">管理面板</div>
					<div class="hot_content">
						<div class="hot_content_box">
							<div class="hot_content_box_title">
								<img src="${ctx }/resources/img/hot_list_ico.png" />会议管理
							</div>
							<div class="hot_content_box_content">
								<ul>
									<li><a href="${ctx }/project">研讨会管理</a></li>
									<li><a href="${ctx }/conferenceManagement">学术会议管理</a></li>
								</ul>
							</div>
						</div>

						<div class="hot_content_box">
							<div class="hot_content_box_title">
								<img src="${ctx }/resources/img/hot_list_ico.png" />共享管理
							</div>
							<div class="hot_content_box_content">
								<ul>
									<li><a href="${ctx }/dataManagement">数据管理</a></li>
									<li><a href="${ctx }/algorithmManagement">算法管理</a></li>
								</ul>
							</div>
						</div>

						<div class="hot_content_box">
							<div class="hot_content_box_title">
								<img src="${ctx }/resources/img/hot_list_ico.png" />成果管理
							</div>
							<div class="hot_content_box_content">
								<ul>
									<li><a href="${ctx }/journalpaperManagement">期刊论文</a></li>
									<li><a href="${ctx }/conferencepaperManagement">会议论文</a></li>
									<li><a href="${ctx }/bookManagement">学术论著</a></li>
									<li><a href="${ctx }/patentManagement">发明专利</a></li>
									<li><a href="${ctx }/softcopyrightManagement">软件著作权</a></li>
									<li><a href="${ctx }/awardManagement">科技获奖</a></li>
									<li><a href="${ctx }/studentManagement">人才培养</a></li>
								</ul>
							</div>
						</div>
					</div>
				</div>