/**
 * 用户注册输入框后方提示
 * index6.jsp
 */
function checkuserName2() {
	var userName2 = document.getElementById("userName2").value;
	var checkuserName2Result = document.getElementById("checkuserName2Result");
	if (userName2.trim().length == 0) {
		document.getElementById("checkuserName2Result").innerHTML="用户名不能为空";
		document.getElementById("submit").disabled = false;
	} 
	else {
		document.getElementById("checkuserName2Result").innerHTML="";
		document.getElementById("submit").disabled = true;
	}
}

function checkTel() {
    var UserTel = document.getElementById("userTel").value;
    var checkUserTelResult = document.getElementById("checkUserTelResult");
    if (UserTel.trim().length == 0) {
    	document.getElementById("checkUserTelResult").innerHTML="电话号不能为空";
    	document.getElementById("submit").disabled = false;
    } 
    else {
    	if(UserTel.trim().length == 11){
    		document.getElementById("checkUserTelResult").innerHTML="<font color='green'>格式正确！</font>";
    		 document.getElementById("submit").disabled = true;
    	}
    	else{
    		document.getElementById("checkUserTelResult").innerHTML="电话号格式不正确！";
        	document.getElementById("submit").disabled = false;
    	}
    }
}

function checkuserPassword2() {
    var userPassword2 = document.getElementById("pwd1").value;
    var checkuserPassword2Result = document.getElementById("checkuserPassword2Result");
    if (userPassword2.trim().length == 0) {
        document.getElementById("checkuserPassword2Result").innerHTML="<font color='red'>密码不能为空</font>";
    	document.getElementById("submit").disabled = false;
    } 
    else {
    	document.getElementById("checkuserPassword2Result").innerHTML="<font color='green'>格式正确！</font>";
    	document.getElementById("submit").disabled = true;
    }
}

function checkpwd3Result() {
    var pwd2 = document.getElementById("pwd2").value;
    var checkpwd3Result = document.getElementById("checkpwd3Result");
    if (pwd2.trim().length == 0) {
    	document.getElementById("checkpwd3Result").innerHTML="<font color='red'>请再次输入密码以确认！</font>";
    	document.getElementById("submit").disabled = false;
    } 
    else {
    	var pwd1 = document.getElementById("pwd1").value;
    	var pwd2 = document.getElementById("pwd2").value;
    	if(pwd1 == pwd2) {
    		document.getElementById("checkpwd3Result").innerHTML="<font color='green'>两次密码相同</font>";
    		document.getElementById("submit").disabled = false;
    	}
    	else {
    		document.getElementById("checkpwd3Result").innerHTML="<font color='red'>两次密码不相同</font>";
    		document.getElementById("submit").disabled = true;
    	}
    }
}