$(document).ready(function($) {
	
    /**中间漂浮的广告图**/
	$(".left_top_box .left_top_box_title span").click(function(){
		$(this).parent().parent().hide();
	});
	
    /**中间漂浮的广告图**/
	$(".middle_box span").click(function(){
		$(this).parent().hide();
	});
	
	
	self.setInterval(function(){
		$(".left_top_box").hide();
		$(".middle_box").hide();
	},5000);
	
	var browser = navigator.appName
	var b_version = navigator.appVersion
	var version = b_version.split(";");
	//var trim_Version = version[1].replace(/[ ]/g, "");
	if (browser == "Microsoft Internet Explorer" && trim_Version == "MSIE6.0") {
		alert("您使用的IE版本过低，这会导致您浏览本网站的体验降低，请升级浏览器或使用其他浏览器浏览本网站！");
	}
   
});




