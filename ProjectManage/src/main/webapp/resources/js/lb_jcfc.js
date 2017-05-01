var x = 0;
var midd_x = 0;
$(document).ready(function($) {
	$(".words11_jcfc_content .box .midd ul li a img").click(function() {
		var num = $(this).parent().parent().index();
		var nums = $(".words11_jcfc_content .box .midd ul li").length;

		for (var i = 0; i < nums; i++) {
			if (num == i) {
				$(".words11_jcfc_content .box .midd ul").children().eq(num).find("img").css("border", "2px solid #ff780d");
				$(".words11_jcfc_content .box .focus img").attr("src", $(".words11_jcfc_content .box .midd ul").children().eq(num).find("img").attr("src"));
			} else {
				$(".words11_jcfc_content .box .midd ul").children().eq(i).find("img").css("border", "2px solid #FFF");
			}
		}
	});
});

function lb_jcfc(tag) {
	var browser = navigator.appName
	var b_version = navigator.appVersion
	var version = b_version.split(";");
	var trim_Version = version[1].replace(/[ ]/g, "");
	if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE6.0") {
		alert("请升级浏览器！");
	} else if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE7.0") {
		var nums = $(".words11_jcfc_content .box ul li").length;
		x = ($(".words11_jcfc_content .box ul li img").width()+4+9.5)*nums - 276;
	}else{
		x = $(".words11_jcfc_content .box .midd ul").width() - 276;
	}
	
	var temp = 80;
	if (tag == "+") {
		midd_x = midd_x - temp;
		if (midd_x + x > temp) {
			$(".words11_jcfc_content .box .midd ul").animate({
				left: "-=" + temp + 'px'
			}, 500);
		} else {
			$(".words11_jcfc_content .box .midd ul").animate({
				left: "-" + x + 'px'
			}, 500);
		}
	}
	if (tag == "-") {
		midd_x = midd_x + temp;
		if (x + midd_x < x) {
			$(".words11_jcfc_content .box .midd ul").animate({
				left: "+=" + temp + 'px'
			}, 500);
		} else {
			$(".words11_jcfc_content .box .midd ul").animate({
				left: '0px'
			}, 500);
		}
	}
}