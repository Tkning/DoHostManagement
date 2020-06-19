/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package NewsManage;

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
public class LookNewstypeServlet extends HttpServlet {
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try{
            DBJavaBean db=new DBJavaBean();
            ResultSet rs=db.selectNewstype("国内新闻");
             HttpSession session=request.getSession();   
             ArrayList al=new ArrayList();
             while(rs.next()){
            	 News st=new News();
                 st.setNewsID(rs.getString("ID"));
                 st.setNewsTitle(rs.getString("Title"));
                 st.setNewsContent(rs.getString("Content"));
                 st.setNewsType(rs.getString("Type"));
                 st.setNewsIssDate(rs.getString("IssDate"));
                 al.add(st); 
                 session.setAttribute("al", al);
             }           
             rs.close();
             response.sendRedirect("news/jsp/looknewtype.jsp");
        }catch(Exception e){
            e.printStackTrace();
        }
        
    }
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doGet(request, response);
    }
}
