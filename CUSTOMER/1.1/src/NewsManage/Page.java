package NewsManage;
/*import NewsManage.LinkData; */
import java.sql.*;
/*import java.util.*;
import com.sun.rowset.*; */
public class Page {
    StringBuffer queryResult;     //查询结果
    public Page()
    {  queryResult=new StringBuffer();
       try{  Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
          }
       catch(Exception e)
           {  queryResult=new StringBuffer();
              queryResult.append(""+e);
           } 
    }
    public StringBuffer getQueryResult()
    {  Connection con;
       Statement sql; 
       ResultSet rs;
      try { queryResult.append("<table border=1>"); 
            String uri= "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=db_news";
            con=DriverManager.getConnection(uri,"sa","123456");
            DatabaseMetaData metadata=con.getMetaData();
            //如果tableName表有n个字段，rs1就刚好有n行，每行中含有字段名的信息
            ResultSet rs1=metadata.getColumns(null,null,"tb_news",null);
            int 字段个数=0;
            queryResult.append("<tr>");
            while(rs1.next())
             { 字段个数++;
               String clumnName=rs1.getString(4);
               queryResult.append("<td>"+clumnName+"</td>");
             }
            queryResult.append("</tr>");
            sql=con.createStatement();
            rs=sql.executeQuery("SELECT * FROM tb_news");
            while(rs.next())
            {  queryResult.append("<tr>");
               for(int k=1;k<=字段个数;k++) 
                {  queryResult.append("<td>"+rs.getString(k)+"</td>");
                }
               queryResult.append("</tr>");
            }
            queryResult.append("</table>");
            con.close();
           }
       catch(SQLException e) 
           {  queryResult.append(e);
           }
       return queryResult;
   }    
}  

   

