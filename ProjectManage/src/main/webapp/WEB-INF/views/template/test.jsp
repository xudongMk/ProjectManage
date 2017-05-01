<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:set var = "ctx" value="${pageContext.request.contextPath }"></c:set>
<!DOCTYPE html>
<html lang="zh-cn">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>项目管理 首页</title>

    <!-- Bootstrap -->
    <link href="${ctx }/resources/css/bootstrap.min.css" rel="stylesheet">
    <style type="text/css">
      body{
        color:#888;
        font: normal 14px/24px \5FAE\8F6F\96C5\9ED1;
      }
      .plate{
        padding:10px 20px;
      }
      
      .plate .title{
        border-bottom: #ddd solid 1px;
        height: 37px;
        line-height: 37px;
        position: relative;
        width: 100%;
        font-weight: normal;
      
      }
      
      .plate .titName{
        height: 24px;
        line-height: 5px;
        border-bottom: #2f8cd3 solid 1px;
        color: #2f8cd3;
        font-size: 16px;
        position: absolute;
        top: 0;
        left: 0;
      }
      
      .plate .more{
        position: absolute;
        right: 0;
        top: 0;
        font-size: 14px;
        color: #2f8cd3;
      }
      
      h2{
        display: block;
        font-size: 1.5em;
        -webkit-margin-before: 0.83em;
        -webkit-margin-after: 0.83em;
        -webkit-margin-start: 0px;
        -webkit-margin-end: 0px;
        font-weight: bold;
      }
      
      .viewNav {
          border-bottom: #ddd solid 1px;
          height: 60px;
          padding: 15px 0;
          margin-bottom: 20px;
      }
      
      .viewNav a:hover, .viewNav a.active{
        background: #2f8cd3;
        color: #FFF;
        text-decoration: none;
      
      }
      
      .viewNav a {
        display: block;
        font-size: 13px;
        color: #5e5e5e;
        border-radius: 3px;
        height: 28px;
        padding: 0 11px;
        margin-right: 10px;
        line-height: 28px;
        float: left;
        background: #dddddd;
        color: #2f8cd3;
      }
      
      ul, ol {
        list-style: none;
      }
      
      .viewList li{
        border-bottom: #eaeaea solid 1px;
        margin-bottom: 20px;
        display: list-item;
        text-align: -webkit-match-parent;
      }
    
      .viewList .left_image img{
        display: block;
        float: left;
        width: 240px;
        height: 160px;
        margin-right: 18px;
    
      }
      
      .viewList .right_content{
        width: 70%;
        float: left;
        line-height: 32px;
      
      }
      
      .viewList li strong {
        font-size: 22px;
        font-weight: normal;
        line-height: 40px;
        margin-bottom: 10px;
        display: block;
        height: 40px;
        -o-text-overflow: ellipsis;
        text-overflow: ellipsis;
        white-space: nowrap;
        overflow: hidden;
      }
      
      .viewList li p.font13 {
        font-size: 13px;
        height: 32px;
      }
      
      .viewList li p.font13 span{
        padding-right:5px;
      }
      
      .viewList li p.font13 .pub_item{
        padding-right:20px;
      }
      
      .viewList li .right_content .pub_item{
        padding-right:200px;
      }
      
      .viewList li p {
        margin-bottom: 5px;
        height: 72px;
      }
        
      .clearFix:after, .w1000:after, .viewList li:after, .fooNav dl dd:after, .teamList li:after, .askList li:after, .relView dd:after, .basInfo dl:after, .basInfo .dd:after, .viewList dl:after, .memManagement dl:after, .commentsList li:after {
        content: '\0020';
        display: block;
        height: 0;
        clear: both;
      }
    </style>
   
  </head>
  <body>
  
    <!-- 导航区域 -->
  
    <div class="container">
      <div class="view plate">
        <div class="title">
          <h2 class="titName">最新发布</h2>
          <a class="more" href="/view_point/view_point_list" title="更多"><span class="fl">更多</span><em></em></a>
        </div>
       <!--  <div class="viewNav clearFix">
          <a class="active" href="/view_point/view_point_list">全部</a>
          <a href="/view_point/view_point_list?type_id=1" title="学术随笔">学术随笔</a>
        </div> -->
        <div class="viewList">
          <ul class="clearFix">
            <li>
              <div class="left_image">
                <a>
                  <img width="200px" height="200px" class="rounded float-xs-left" alt="兰博基尼" src="${ctx }/resources/images/index.png">
                </a>
              </div>
              <div class="right_content">
                <strong><a>测试案例</a></strong>
                <p>测试观点测试</p>
                <p class="font13">
                  <span class="pub_item"><span class="glyphicon glyphicon-tag" aria-hidden="true"></span>数据分享</span>
                  <span class="pub_item"><span class="glyphicon glyphicon-user" aria-hidden="true"></span>杜非</span>
                  <span class="pub_item"><span class="glyphicon glyphicon-education" aria-hidden="true"></span>合工大  </span>
                  <span class="pub_item"><span class="glyphicon glyphicon-time" aria-hidden="true"></span>2017.01.02</span>
                </p>
              </div>
            </li>
          </ul>
        </div>
      </div>
    
    </div>

    <script src="${ctx }/resources/js/jquery.min.js"></script>
    <script src="${ctx }/resources/js/bootstrap.min.js"></script>
    <script type="text/javascript">
    
    </script>

  </body>
</html>