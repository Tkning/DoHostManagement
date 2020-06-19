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

/**
 *
 * @author Administrator
 */
public class LookManagerServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
    		request.setCharacterEncoding("utf-8");
    		String userName=request.getParameter("username");
            String userPassword=request.getParameter("password");           
            if(userName.equals("admin")&&userPassword.equals("1234")){
                DBJavaBean db=new DBJavaBean();
               /* ResultSet rs=db.selectloginManager(userName,userPassword)*/;	
               ResultSet rs=db.selectManager();
            while(rs.next()){
            	 Manager st=new Manager();
                 st.setManagerID(rs.getString("ID"));
                 st.setManagerName(rs.getString("Name"));
                 st.setManagerPassword(rs.getString("Password"));
                 st.setRealName(rs.getString("RealName"));
                 st.setIssueDate(rs.getString("IssueDate"));
                 st.setMark(rs.getString("mark"));
                 HttpSession session=request.getSession();
                 ArrayList al=new ArrayList();
                 al.add(st); 
                 session.setAttribute("al", al);
            	 }
            rs.close();
            response.sendRedirect("ManagerManage/lookManager.jsp");
            }
            else {
            	response.sendRedirect("ManagerManage/checkmanager.jsp");
            }
        }catch(Exception e){
            e.printStackTrace();
        }
        
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
