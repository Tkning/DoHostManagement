/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package NewsManage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class DeleteNewsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        DBJavaBean db=new DBJavaBean();
        String NO=request.getParameter("NO");
        if(db.DeleteNews(NO))
            response.sendRedirect("NewsManage/message3.jsp");   
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
