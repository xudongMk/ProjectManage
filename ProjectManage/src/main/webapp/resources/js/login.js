$(function(){
	
	$('#switch_register').click(function(){
		$('#switch_login').removeClass("switch_btn_focus").addClass('switch_btn');
		$('#switch_register').removeClass("switch_btn").addClass('switch_btn_focus');
		$('#switch_bottom').animate({left:'0px',width:'70px'});
		$('#register').css('display','none');
		$('#login_all').css('display','block');
		
		});
	$('#switch_login').click(function(){
		
		$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
		$('#switch_register').removeClass("switch_btn_focus").addClass('switch_btn');
		$('#switch_bottom').animate({left:'154px',width:'70px'});
		
		$('#register').css('display','block');
		$('#login_all').css('display','none');
		});
if(getParam("a")=='0')
{
	$('#switch_login').trigger('click');
}

	});
	
function logintab(){
	scrollTo(0);
	$('#switch_register').removeClass("switch_btn_focus").addClass('switch_btn');
	$('#switch_login').removeClass("switch_btn").addClass('switch_btn_focus');
	$('#switch_bottom').animate({left:'154px',width:'96px'});
	$('#register').css('display','none');
	$('#login_all').css('display','block');
	
}


//根据参数名获得该参数 pname等于想要的参数名 
function getParam(pname) { 
    var params = location.search.substr(1); 
    var ArrParam = params.split('&'); 
    if (ArrParam.length == 1) { 
         
        return params.split('=')[1]; 
    } 
    else { 
        for (var i = 0; i < ArrParam.length; i++) { 
            if (ArrParam[i].split('=')[0] == pname) { 
                return ArrParam[i].split('=')[1]; 
            } 
        } 
    } 
}  

//密码位数
var reMethod = "GET",
	pwdmin = 6;

$().ready(function() {
	//用户登录判断
	$("#username").blur(function() {
		var username = $.trim($("#username").val());
		var dom=document.getElementById("attention_alert_login")
		if(username==""||username==null){
			
			dom.innerHTML="用户名不能为空";
		}else{
			dom.innerHTML=" ";
		}		
	})
    //用户注册中判断用户名是否为空或者存在以及用户名的位数
	/*$("#user").blur(function() {
		var username = $.trim($("#user").val());
		
		if(username==""||username==null){			
			$("#attention_alert_reg").html("<font color='red'><b>用户名不能为空</b></font>");
		}else{
			if($('#user').val().length < 4 || $('#user').val().length > 16){
			$("#attention_alert_reg").html("<font color='red'><b>请输入4-16字符的用户名</b></font>");
			}else{
				$.ajax({
					url : 'checkUsernameExists',
					data : {
						username : username
					},
					type : 'post',
					cache : false,
					dataType : 'text',
					success : function(data) {
						if (data=="true") {
							$("#attention_alert_reg").html("<font color='red'><b>该用户名已经被注册</b></font>");
						} else {
							$("#attention_alert_reg").html("<font color='red'><b>该用户名可以使用</b></font>");
						}
					}
				});
			}	
		}		
	});	*/
	//判断邮箱是否存在
	//判断密码是够一致和密码的位数
	$('#pwd').blur(function() {
		if ($('#pwd').val().length < pwdmin) {		
		$("#attention_alert_reg").html("<font color='red'><b>密码不能小于" + pwdmin + "位</b></font>");			
		}else{
			$("#attention_alert_reg").html(" ");
		}		
	});
	$("#pwdagain").blur(function(){
	    if ($('#pwdagain').val() != $('#pwd').val()) {		
		$("#attention_alert_reg").html("<font color='red'><b>两次密码不一致！</b></font>");
		}else{
			$("#attention_alert_reg").html(" ");
		}
	});
});