<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var="ctx" value="${pageContext.request.scheme}://${pageContext.request.serverName}:${pageContext.request.serverPort}${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,Chrome=1">
		<meta name="renderer" content="webkit">
		<!--国产浏览器高速模式-->
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<title>项目简介</title>
		<!-- 基础样式文件 开始 -->
		<link href="${ctx }/resources/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="${ctx }/resources/css/base.css" rel="stylesheet" type="text/css">
		<link href="${ctx }/resources/css/index.css" rel="stylesheet" type="text/css">
	</head>

	<body>
		<!-- top 开始 -->
	<%@ include file="top.jsp"%>
		<!-- top 结束 -->
		
		<!-- main 开始 -->
		<div class="main">
			<div class="main_box">

				<!-- logo 开始 -->
				<div class="logo"></div>
				<!-- logo 结束 -->
               <%@ include file="nav.jsp"%>
				<!-- banner 开始 -->
				
				<!-- address 开始 -->
				<div class="address">
					<a href=${ctx }>首页</a><a>：</a><a href="javascript:void(0);">项目介绍</a>
				</div>
				<!-- address 结束 -->

				<!-- list_main 开始 -->
				<div class="content_main">
					<div class="content_main_title">
						大数据环境下的商务管理研究
					</div>
					<div class="content_main_dis">
						
					</div>
					<div class="content_main_con">
						<p style="line-height: 2em;">
    <strong>一、科学目标</strong>
</p>
<p style="line-height: 2em;">
    &nbsp; 认知大数据的复杂特征及其所带来的商务管理新机遇与新挑战，围绕大数据环境下商务管理中的重大基础科学问题开展深入系统的研究，以发现大数据环境下的商务行为机理、提出基于数据分析的顾客洞察与市场营销策略、设计数据驱动的企业运营优化与协调模式、揭示大数据商务智能与模式创新路径、开发面向大数据的商务分析和计算方法以及支撑平台，并通过合作示范工程检验理论的应用示范。
</p>
<p>
    <br/>
</p>
<p style="line-height: 2em;">
    <strong>二、研究内容</strong>
</p>
<p style="line-height: 2em;">
    &nbsp; （一）大数据环境下的商务行为机理。
</p>
<p style="line-height: 2em;">
    &nbsp; &nbsp;研究移动和社会化网络环境中人、组织与市场的交互行为机理，以及新型一体化的社会网络中的社会资本结构及其在商务领域中的价值和影响。主要内容包括：用户创造的在线大数据的生成机理及行为内涵，移动和社会化网络环境中的信息传播机理与社会资本结构，基于社会媒体的协同发展与价值创造，基于大数据信息环境的市场有效性和公平性，大数据技术与应用的采纳和扩散等。
</p>
<p style="line-height: 2em;">
    &nbsp; &nbsp;（二）大数据环境下的顾客洞察与市场营销策略。
</p>
<p style="line-height: 2em;">
    &nbsp; &nbsp;研究大数据环境下顾客行为特征、与企业的互动以及相应的价值产生机理，探索企业进行全方位的顾客体验管理、增加消费者福利和企业效益的策略。主要内容包括：多渠道、多网络的全生命周期消费者行为，社交网络的结构和消费者的体验分享对于产品和服务的设计及其传播扩散的影响，基于大数据的消费者行为与营销模型，社会化网络环境下新型产品与服务管理，大数据环境下的市场营销策略。
</p>
<p style="line-height: 2em;">
    &nbsp; &nbsp;（三）大数据环境下的运营策略优化与协调。
</p>
<p style="line-height: 2em;">
    &nbsp; &nbsp;研究大数据环境下新型运营要素及其度量、企业间的竞争与合作、运营优化与协调策略及其运营风险的控制。主要内容包括：基于大数据的产品/服务的价值测度方法，面向大数据的运作系统设计与优化方法，大数据环境下的产品/服务定价策略与优化，社会化制造/服务下组织间的竞争分析与机制设计，社会化制造/服务下组织间运作的不确定性分析与风险控制等。
</p>
<p style="line-height: 2em;">
    &nbsp; &nbsp;（四）基于大数据的商务智能与模式创新。
</p>
<p style="line-height: 2em;">
    &nbsp; &nbsp;研究基于移动和社会化网络的新兴大数据智能商务与商业模式创新理论与方法。主要内容包括：针对大数据分析的商务智能商业价值评估及企业能力构建，面向社会化协作的新型业态及企业成长模式，大数据环境下的市场新机会发现与创业创新模式，个性化新兴移动应用模式及服务机制创新，基于企业内外部数据资源整合的产品/服务创新，基于大数据的商业模式创新与扩散机理等。
</p>
<p style="line-height: 2em;">
    &nbsp; &nbsp;（五）面向大数据的商务分析与计算方法以及支撑平台。
</p>
<p style="line-height: 2em;">
    &nbsp; &nbsp;研究面向商务管理的大数据分析与计算的核心方法及其关键技术，开发面向商务管理研究与应用的支撑平台。主要内容包括：基于非结构化网络大数据的商业情报分析，面向富媒体、流数据的融合方法与动态分析，多样性和代表性信息的感知与识别、评估与推荐方法，大数据驱动的个性化用户特征刻画、标准化、智能生成与实时可视化技术，面向商务管理的内外部数据获取系统、计算实验平台以及原型系统建设等。
</p>
<p>
    <br/>
</p>
<p style="line-height: 2em;">
    <strong>三、资助期限</strong> 5年 （2015年1月至2019年12月）
</p>
<p>
    <br/>
</p>
<p style="line-height: 2em;">
    <strong>四、资助经费</strong> 1800万元
</p>
<p>
    <br/>
</p>
					</div>
					</div>
		          </div>
				</div>
				<!-- list_main 结束 -->
	<%@ include file="footer.jsp" %>
			</div>
		</div>
		<!-- main 结束 -->

	</body>

</html>