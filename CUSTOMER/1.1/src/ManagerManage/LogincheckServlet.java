/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagerManage;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


public class LogincheckServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
        	request.setCharacterEncoding("utf-8");
            String name=request.getParameter("username");
            String password=request.getParameter("password");
		     DBJavaBean db=new DBJavaBean();
            ResultSet rs=db.selectloginManager(name,password);
            HttpSession session=request.getSession();
            while(rs.next()){
           	 session.setAttribute("name",name);
           	 response.sendRedirect("NewsManage/NewsAdmin.jsp");
           	 /*request.getRequestDispatcher("ManagerManage/mgeAdmin.jsp").forward(request, response); */
       } 
           rs.close();
       	response.sendRedirect("ManagerManage/login.jsp");
       	/*request.getRequestDispatcher("ManagerManage/longin.jsp").forward(request, response);*/
       
	}catch(Exception e){
       e.printStackTrace();
   }
		
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}