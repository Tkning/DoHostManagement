/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagerManage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class UpdateManagerServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String ManagerID=request.getParameter("ManagerID");
        String ManagerName=request.getParameter("ManagerName");
        String ManagerPassword=request.getParameter("ManagerPassword");
        String RealName=request.getParameter("RealName");
        String IssueDate=request.getParameter("IssueDate");
        String mark=request.getParameter("mark");
        DBJavaBean db=new DBJavaBean();
        if(db.updateManager(ManagerID,ManagerName,ManagerPassword,RealName,IssueDate,mark)){
            response.sendRedirect("ManagerManage/message2.jsp");
        }else{
            response.sendRedirect("ManagerManage/lookUpdateManager.jsp");
       }        
      
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
