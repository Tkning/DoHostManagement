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
public class DeleteManagerServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBJavaBean db=new DBJavaBean();
        String NO=request.getParameter("NO");
        if(db.DeleteManager(NO))
            response.sendRedirect("ManagerManage/message3.jsp");   
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
