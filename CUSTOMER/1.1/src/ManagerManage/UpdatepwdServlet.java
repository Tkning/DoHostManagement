package ManagerManage;

import java.io.IOException;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

	public class UpdatepwdServlet extends HttpServlet {
	    protected void doGet(HttpServletRequest request, HttpServletResponse response)
	            throws ServletException, IOException {
	    	try{request.setCharacterEncoding("utf-8");
	    	String ManagerPassword=request.getParameter("password1");
	        String RealName=request.getParameter("realname");  
	        String userName=request.getParameter("name");  
	        String password=request.getParameter("password");  
	        DBJavaBean db=new DBJavaBean();
	        ResultSet rs=db.selectManager();
	        while(rs.next()){
	        if(userName.equals(rs.getString("Name"))&& password.equals(rs.getString("Password"))) {
	        if(db.updatepassword(RealName,ManagerPassword))
	            response.sendRedirect("NewsManage/message2.jsp");
	        
	        else{
	            response.sendRedirect("ManagerManage/Updatepwd.jsp");}
	       }  
	        
	    }
	        }catch(Exception e){
            e.printStackTrace();
        }
	    }
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
