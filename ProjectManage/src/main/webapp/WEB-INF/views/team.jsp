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
		
		<title>团队风采</title>
		<!-- 基础样式文件 开始 -->
		<link href="${ctx }/resources/css/bootstrap.css" rel="stylesheet" type="text/css">
		<link href="${ctx }/resources/css/base.css" rel="stylesheet" type="text/css">
		<link href="${ctx }/resources/css/index.css" rel="stylesheet" type="text/css">
		<style type="text/css">
		.hidden{
		display:none;
		}
		</style>
		<!-- 基础样式文件结束 -->
		<!-- 基础JS文件 开始 -->
		<script type="text/javascript" src="${ctx }/resources/js/jquery.js"></script>
		<script type="text/javascript" src="${ctx }/resources/js/bootstrap.min.js"></script>
		<script type="text/javascript" src="${ctx }/resources/js/base.js"></script>
		<script type="text/javascript" src="${ctx }/resources/js/index.js"></script>
	</head>
  <body>

     <%@ include file="top.jsp"%>
		<div class="main">
			<div class="main_box">
				<div class="logo"></div>
		          <%@ include file="nav.jsp"%>
	
                 <div class="address">
					<a href=${ctx }>首页</a><a>：</a><a href="javascript:void(0);">团队风采</a><a>&gt;</a><a href="javascript:void(0);" id="address"></a>
				</div>
				<div class="list_main">
					<!-- hot 开始 -->
					<div class="hot">
						<div class="hot_title">
							团队风采
						</div>
						<div class="hot_content">
							<div class="hot_content_box">
								<div class="hot_content_box_title">
									<img src="resources/img/hot_list_ico.png" />
									<a onclick="reload()" href="javascript:void(0)">专家团队</a>
								</div>
								
							</div>
					   <div class="hot_content_box">
								<div class="hot_content_box_title">
									<img src="resources/img/hot_list_ico.png" />
									<a onclick="school()" href="javascript:void(0)">课题组单位</a>
								</div>
								
							</div>
					<div class="hot_content_box">
								<div class="hot_content_box_title">
									<img src="resources/img/hot_list_ico.png" />
									<a onclick="expert()" href="javascript:void(0)">专家指导组</a>
								</div>
								
							</div>
						
						</div>
					</div>
					<!-- hot 结束 -->
					<!-- list_con 开始 -->
					<div class="list_pic_con  people">
						<div class="list_pic_con_title">
							<font>专家团队</font>
						</div>
						<div class="list_pic_con_content">
							<ul>
								<li>
									<img src="${ctx }/resources/img/chenj.jpg">
									<p class="title"><a href="http://www.sem.tsinghua.edu.cn/zh/chenj" target="_blank">陈剑 教授</a></p>
									<p class="time">清华大学管理科学与工程系 联想讲席教授 系主任</p>
									<p class="con">陈剑教授获得过多项科技奖励及荣誉称号，如教育部科技进步奖/自然科学奖/人文社会科学奖；国际电气和电子工程师协会（IEEE）会士；IBM学院奖；教育部长江学者；复旦管理学奖；全国优秀博士学位论文指导教师…<a href="http://www.sem.tsinghua.edu.cn/zh/chenj" target="_blank">【详细】</a></p>
								</li>
								<li>
									<img src="${ctx }/resources/img/chengq.jpg">
									<p class="title"><a href="http://www.sem.tsinghua.edu.cn/zh/chengq" target="_blank">陈国青 教授</a></p>
									<p class="time">清华大学经济管理学院EMC讲席教授，学术委员会主任</p>
									<p class="con">陈国青教授曾获国际模糊系统协会2009年度“IFSA Fellow”；复旦管理学奖基金会2007年度“管理学杰出贡献奖”；1999年度国家杰出青年科学基金；全国百篇优秀博士论文指导教师等…<a href="http://www.sem.tsinghua.edu.cn/zh/chengq" target="_blank">【详细】</a></p>
								</li>
								<li>
									<img src="${ctx }/resources/img/yangsl.jpg">
									<p class="title"><a href="http://som.hfut.edu.cn/home.php?mod=space&uid=4" target="_blank">杨善林 院士</a></p>
									<p class="time">中国工程院院士、合肥工业大学管理学院教授、博士生导师</p>
									<p class="con">长期从事智能决策理论与技术，信息系统理论与技术，发展战略规划与系统管理理论等基础理论研究工作，以及这些理论、技术在复杂产品开发工程管理、制造工程管理、企业管理和社会管理中的相关应用研究…<a href="http://som.hfut.edu.cn/home.php?mod=space&uid=4" target="_blank">【详细】</a></p>
								</li>

								<li>
									<img src="${ctx }/resources/img/huanglh.png">
									<p class="title"><a href="http://www.fdsm.fudan.edu.cn/AboutUs/preview.aspx?UserID=38" target="_blank">黄丽华 教授</a></p>
									<p class="time">复旦大学管理学院总支书记、博士生导师</p>
									<p class="con">荣获教育部“跨世纪人才”、上海市巾帼建功个人标兵、“863计划”自动化领域CIMS先进工作者、上海市三八红旗手、上海市女职工标兵、上海市教学成果二、三等奖、上海市“三八红旗手标兵”、全国“三八红旗手”…<a href="http://www.fdsm.fudan.edu.cn/AboutUs/preview.aspx?UserID=38" target="_blank">【详细】</a></p>
								</li>
								<li>
									<img src="${ctx }/resources/img/jiajm.jpg">
									<p class="title"><a href="http://userweb.swjtu.edu.cn/Userweb/jiajianmin/index.htm" target="_blank">贾建民 教授</a></p>
									<p class="time">西南交通大学经济管理学院名誉院长、博士生导师</p>
									<p class="con">教育部“长江学者讲座教授”，四川省人大常委会委员，全国MBA教育指导委员会委员，国家自然科学基金委管理科学部专家咨询委员会委员…<a href="http://userweb.swjtu.edu.cn/Userweb/jiajianmin/index.htm" target="_blank">【详细】</a></p>
								</li>
								<li>
									<img src="${ctx }/resources/img/yeq.jpg">
									<p class="title"><a href="http://som.hit.edu.cn/html/teacher/2GV5UMJSO649PU.html" target="_blank">叶强 教授</a></p>
									<p class="time">哈尔滨工业大学管理学院院长、博士生导师</p>
									<p class="con">2012年国家杰出青年科学基金获得者，国务院学位委员会学科评议组成员，教育部管理科学与工程类教学指导委员会委员，近年来先后在POM、IJHM及TM等国际主流学术期刊发表30余篇学术论文…<a href="http://som.hit.edu.cn/html/teacher/2GV5UMJSO649PU.html" target="_blank">【详细】</a></p>
								</li>
															
								<li>
									<img src="${ctx }/resources/img/liuyz.jpg">
									<p class="title"><a href="http://som.hfut.edu.cn/home.php?mod=space&uid=8" target="_blank">刘业政 教授</a></p>
									<p class="time">合肥工业大学管理学院院长、博士生导师</p>
									<p class="con">“新世纪百千万人才工程”国家级人选，国务院特殊津贴专家。合肥工业大学电子商务研究所所长，教育部电子商务类专业教学指导委员会委员，过程优化与智能决策教育部重点实验室副主任…<a href="http://som.hfut.edu.cn/home.php?mod=space&uid=8" target="_blank">【详细】</a></p>
								</li>
								
							</ul>
						
						</div>
					</div>
					
					<div class="list_pic_con school">
						<div class="list_pic_con_title">
							<font>课题组单位</font>
						</div>
						<div class="list_pic_con_content">
							<ul>
								<li>
									<img src="resources/img/qinghua.jpg">
									<p class="title"><a href="http://www.tsinghua.edu.cn/" target="_blank">清华大学</a></p>
									<p class="con">负责基于大数据的商务智能与模式创新研究课题，负责大数据环境下的企业运营策略优化与协调研究课题，参与大数据环境下的商务行为机理研究课题。主要研究大数据环境下新型运营要素及其度量、企业间的竞争与合作、运营优化与协调策略及其运营风险的控制和基于移动和社会化网络的新兴大数据智能商务与商业模式创新理论与方法</p>
								</li>
								<li>
									<img src="resources/img/fudan.jpg">
									<p class="title"><a href="http://www.fudan.edu.cn/" target="_blank">复旦大学</a></p>
									<p class="con">负责大数据环境下的商务行为机理研究课题，参与大数据环境下的企业运营策略优化与协调研究课题。主要研究移动和社会化网络环境中人、组织与市场的交互行为机理，以及新型一体化的社会网络中的社会资本结构及其在商务领域中的价值和影响。</p>
								</li>
								<li>
									<img src="resources/img/xinanjiaotong.jpg">
									<p class="title"><a href="http://www.swjtu.edu.cn/" target="_blank">西南交通大学</a></p>
									<p class="con">负责大数据环境下的顾客洞察与市场营销策略研究课题，参与面向大数据的商务分析与计算方法以及支撑平台课题。主要研究大数据环境下顾客行为特征、与企业的互动以及相应的价值产生机理，探索企业进行全方位的顾客体验管理、增加消费者福利和企业效益的策略。</p>
								</li>
								
								<li>
									<img src="resources/img/hfut_logo.jpg">
									<p class="title"><a href="http://www.hfut.edu.cn" target="_blank">合肥工业大学</a></p>
									<p class="con">负责面向大数据的商务分析与计算方法以及支撑平台课题。主要研究面向商务管理的大数据分析与计算的核心方法及其关键技术，开发面向商务管理研究与应用的支撑平台。</p>
								</li>
								<li>
									<img src="resources/img/hagongda.jpg">
									<p class="title"><a href="http://www.hit.edu.cn/" target="_blank">哈尔滨工业大学</a></p>
									<p class="con">参与基于大数据的商务智能与模式创新研究课题，参与大数据环境下的顾客洞察与市场营销策略研究课题。</p>
								</li>
								
							</ul>
						
						</div>
					</div>
					
					<div class="list_pic_con expert">
						<div class="list_pic_con_title">
							<font>专家指导组</font>
						</div>
						<div class="list_pic_con_content">
							<ul>
								<li>
									<img src="resources/img/mafc.jpg">
									<p class="title"><a href="http://www.whu.edu.cn/info/1220/3572.htm" target="_blank">马费成 教授</a></p>
									<p class="time">武汉大学教授、信息管理与情报学家、博士生导师</p>
									<p class="con">教育部人文社会科学重点基地武汉大学信息资源研究中心主任，国务院学位委员会图书馆、情报与档案管理学科评议组召集人，教育部社会科学委员会委员，国家社会科学基金图书馆、情报与文献学评审组副组长…<a href="http://www.whu.edu.cn/info/1220/3572.htm" target="_blank">【详细】</a></p>
								</li>
								<li>
									<img src="resources/img/maojy.jpg">
									<p class="title"><a href="http://www.rbs.org.cn/jxyyj/teadetail/331" target="_blank">毛基业 教授</a></p>
									<p class="time">中国人民大学商学院院长</p>
									<p class="con"> 毛基业教授的主要研究领域是管理信息系统的组织采纳，各类用户行为，外包和信息化项目管理，以及电子商务应用。在国际国内学术刊物和重要学术会议上发表80多篇学术论文...<a href="http://www.rbs.org.cn/jxyyj/teadetail/331" target="_blank">【详细】</a></p>
								</li>
								<li>
									<img src="resources/img/chenyx.jpg">
									<p class="title"><a href="https://shanghai.nyu.edu/cn/shizi/zi-shen" target="_blank">陈宇新 教授</a></p>
									<p class="time">上海纽约大学商学部副主任</p>
									<p class="con">市场学教授，曾任西北大学Kellogg管理学院讲席教授。出版了大量著作，为5本一流学术期刊担任主编。在上海纽约大学讲授《市场入门》课程...<a href="https://shanghai.nyu.edu/cn/shizi/zi-shen" target="_blank">【详细】</a></p>
								</li>
								<li>
									<img src="resources/img/yug.jpg">
									<p class="title"><a href="#">于刚 教授</a></p>
									<p class="time">1号店董事长、联合创始人</p>
									<p class="con">曾任美国德州奥斯汀分校管理学院终身教授和座席教授，亚马逊全球供应链副总裁，戴尔全球采购副总裁，1号店董事长、联合创始人<a href="#">【详细】</a></p>
								</li>
								
								<li>
									<img src="resources/img/zengdj.jpg">
									<p class="title"><a href="http://people.ucas.ac.cn/~Zengdajun" target="_blank">曾大军  研究员</a></p>
									<p class="time">中国科学院自动化所 研究员,博士生导师 </p>
									<p class="con">海外归国终身教授，复杂系统管理与控制国家重点实验室副主任，曾任职于美国亚利桑那大学管理学院任助理教授、副教授并获终身教授<a href="http://people.ucas.ac.cn/~Zengdajun" target="_blank">【详细】</a></p>
								</li>
								
							</ul>
						
						</div>
					</div>
					<!-- hot 结束 -->
				</div>
				<!-- list_main 结束 -->

			<%@ include file="footer.jsp" %>
			</div>
		</div>
		<!-- main 结束 -->
    <script type="text/javascript">  
       $("#address").append("专家团队");       
       $(".school").addClass("hidden") ;
       $(".expert").addClass("hidden") ;
       
       function reload(){
    	   location.reload();
       }
       function school(){
    	   $(".people").addClass("hidden");
    	   $(".expert").addClass("hidden") ;
    	   $(".school").removeClass("hidden");
    	   $("#address").text("课题组单位");
       }
       function expert(){
    	   $(".people").addClass("hidden");
    	   
    	   $(".school").addClass("hidden");
    	   $(".expert").removeClass("hidden") ;
    	   $("#address").text("专家指导组");
       }
       
	  </script>
	</body>

</html>