package NewsManage;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Keyselect extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public Keyselect() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
		try{
		request.setCharacterEncoding("utf-8");
	      String newskeyword=request.getParameter("newskeyword");
	      DBJavaBean db=new DBJavaBean();
	      ResultSet rs=db.selectNewskey(newskeyword);
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
	      response.sendRedirect("NewsManage/searchnews.jsp");
		}catch(Exception e){
            e.printStackTrace();
	    }
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
