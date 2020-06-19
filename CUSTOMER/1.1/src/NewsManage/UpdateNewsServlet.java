/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package NewsManage;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Administrator
 */
public class UpdateNewsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    	String NewsID=request.getParameter("NewsID");
        String NewsTitle=request.getParameter("NewsTitle");
        String NewsContent=request.getParameter("NewsContent");
        String NewsType=request.getParameter("NewsType");
        Date currentTime = new Date(); 
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");   
        String NewsIssDate = formatter.format(currentTime);   
        DBJavaBean db=new DBJavaBean();
        if(db.updateNews(NewsID,NewsTitle,NewsContent,NewsType,NewsIssDate)){
            response.sendRedirect("NewsManage/message2.jsp");
        }else{
            response.sendRedirect("NewsManage/lookUpdateNews.jsp");
       }        
      
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }

}
