/**
 * 等级信息的情况
 * 是否为空
 * M_index3.jsp
 */
function registorCheck(){
    	//判断用户名是否为空
   	if(check_info.name.value==""){alert("姓名不能为空!");
    	login_info.userName2.focus();return;}
    	//判断密码是否为空
   	else if(check_info.sex.value==""){alert("性别不能为空!");
		login_info.userPassword2.focus();return;}
    	//判断手机号是否为空
  	else if(check_info.tel.value==""){alert("手机号不能为空!");
  		login_info.tel.focus();return;}
    else if(check_info.room.value==""){alert("房间号不能为空!");
		login_info.tel.focus();return;}
    else if(check_info.deposit.value==""){alert("押金不能为空!");
		login_info.tel.focus();return;}
    else if(check_info.in.value==""){alert("入住时间不能为空!");
		login_info.tel.focus();return;}	    
    else return;
}