package ManagerManage;

import java.io.IOException;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


/**
 * Servlet implementation class LookcheckServlet
 */
@WebServlet(urlPatterns="/LookcheckServlet")
public class LookcheckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LookcheckServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
        try{
            DBJavaBean db=new DBJavaBean();
            ResultSet rs=db.selectManager();
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
                 session.setAttribute("al", al);
             }           
             rs.close();
             response.sendRedirect("ManagerManage/lookManager.jsp");
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
