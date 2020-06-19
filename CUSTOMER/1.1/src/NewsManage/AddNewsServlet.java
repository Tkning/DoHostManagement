/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package NewsManage;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;  
import java.util.Date;  

/**
 *
 * @author Administrator
 */
/*@WebServlet("/AddNewsServlet")*/
public class AddNewsServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
        String ID=request.getParameter("NewsID");
        String Title=request.getParameter("NewsTitle");
        String Content=request.getParameter("NewsContent");
        String Type=request.getParameter("NewsType");
        Date currentTime = new Date(); 
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");   
        String IssDate = formatter.format(currentTime);   
        /*String IssDate=request.getParameter("dateString");*/
        DBJavaBean db=new DBJavaBean();
        if(db.addNews(ID,Title,Content,Type,IssDate)){
            response.sendRedirect("NewsManage/message1.jsp");
        }else{
            response.sendRedirect("NewsManage/addNews.jsp");
       }        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
