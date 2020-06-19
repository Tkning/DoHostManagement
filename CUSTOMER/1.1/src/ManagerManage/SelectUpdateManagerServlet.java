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

public class SelectUpdateManagerServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            DBJavaBean db=new DBJavaBean();
            String ManagerID=request.getParameter("ManagerID");
            ResultSet rs=db.selectUpdateManager(ManagerID);
             HttpSession session=request.getSession();
             ArrayList al=new ArrayList();            
             while(rs.next()){
            	 Manager st=new Manager();
                 st.setManagerID(rs.getString("ID"));
                 st.setManagerName(rs.getString("Name"));
                 st.setManagerPassword(rs.getString("Password"));
                 st.setRealName(rs.getString("RealName"));
                 st.setIssueDate(rs.getString("IssueDate"));
                 st.setMark(rs.getString("mark"));
                 al.add(st); 
                 session.setAttribute("al",al);
             }           
             rs.close();
             response.sendRedirect("ManagerManage/selectUpdateManager.jsp");
        }catch(Exception e){
            e.printStackTrace();
        }
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
