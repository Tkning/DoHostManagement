/**
 * 忘记密码中的信息输入
 * 检测是否为空
 * FindPassword.jsp
 */
function FindCheck() {
     if(Find_pwd.F_info.value=="") {alert("很抱歉，您的输入信息有误，请重新输入！");
     Find_pwd.info.focus();return false;}
}