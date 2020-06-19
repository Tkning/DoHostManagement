/**
 * 判断用户登陆输入是否为空
 * index5.jsp
 */
function login(){
                //判断用户名是否为空
		if (login.userName1.value==""){alert("用户名不能为空，请输入用户名！");
		login.userName1.focus();return;}
                //判断密码是否为空
		if (login.userPassword1.value=="") {alert("密码不能为空，请输入密码！");
		login.userPassword1.focus();return;}
				//判断验证码是否为空
		if (login.validationCode.value==""){alert("验证码不能为空，请输入验证码!");
		login.validationCode.focus();return;}
                //判断验证码是否正确
		if (login.validationCode.value != login.validationCode1.value) {alert("请输入正确的验证码!!");
		login.validationCode.focus();return;}
		login.submit1();
}