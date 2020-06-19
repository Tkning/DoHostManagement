/**
 * 判断搜索框是否为空
 * index2.js
 */
function search_nope() {
	    var s1= document.getElementById("s1").value;
	    var search_n = document.getElementById("search_n");
	    if (s1.trim().length == 0) {
	    	document.getElementById("search_n").innerHTML="输入不能为空！";
	    	document.getElementById("submit1").disabled = false;
	    } 
	    else {
	    	document.getElementById("search_n").innerHTML="";
	        document.getElementById("submit1").disabled = true;
	    }
}