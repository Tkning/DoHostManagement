/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package NewsManage;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author Administrator
 */
public class DBJavaBean {
    private String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
    private String url="jdbc:sqlserver://localhost:1433;databasename=db_news";
    private String user="sa";
    private String password="123456";
    private Connection con=null;
    private Statement st=null;
    private ResultSet rs=null;
    public String getDriverName() {
        return driverName;
    }
    public void setDriverName(String driverName) {
        this.driverName = driverName;
    }
    public String getUrl() {
        return url;
    }
    public void setUrl(String url) {
        this.url = url;
    }
    public String getUser() {
        return user;
    }
    public void setUser(String user) {
        this.user = user;
    }
    public String getPassword() {
        return password;
    }
    public void setPassword(String password) {
        this.password = password;
    }
    public Connection getCon() {
        return con;
    }
    public void setCon(Connection con) {
        this.con = con;
    }
    public Statement getSt() {
        return st;
    }
    public void setSt(Statement st) {
        this.st = st;
    }
    public ResultSet getRs() {
        return rs;
    }
    public void setRs(ResultSet rs) {
        this.rs = rs;
    }
  //完成连接数据库操作，并生成容器返回
    public Statement getStatement(){
        try{
            Class.forName(getDriverName());
            con=DriverManager.getConnection(getUrl(), getUser(), getPassword());
            return con.createStatement();
        }catch(Exception e){
            e.printStackTrace();
            message("无法完成数据库的连接或者无法返回容器，请检查getStatement()方法！");
            return null;
        }
    }
  //添加新闻信息的方法
    public boolean addNews(String NewsID,String NewsTitle,String NewsContent,String NewsType,String NewsIssDate){
        try{
                String sql="insert into tb_news"+"(ID,Title,Content,Type,IssDate)"+"values('"+NewsID+"','"+NewsTitle+"','"+NewsContent+"','"+NewsType+"','"+NewsIssDate+"')";
                st=getStatement();
                int row=st.executeUpdate(sql);
                if(row==1){
                    st.close();
                    con.close();
                    return true;
                }else{
                    st.close();
                    con.close();
                    return false;
            }  
        }catch(Exception e){
            e.printStackTrace();
            message("无法添加新闻信息，请检查addNews()方法！");
            return false;
        }
    }
  //查询所有新闻信息，并返回 rs
    public ResultSet selectNews(){
        try{
            String sql="select * from tb_news";
            st=getStatement();
            return st.executeQuery(sql);
        }catch(Exception e){
            e.printStackTrace();
            message("无法查询新闻信息，请检查aselectNews()方法！");
            return null;
        }
    }
  //根据新闻类别查找新闻信息，并返回 rs
    public ResultSet selectNewstype(String type){
        try{
            String sql="select * from tb_news where Type='"+type+"''";
            st=getStatement();
            return st.executeQuery(sql);
        }catch(Exception e){
            e.printStackTrace();
            message("无法查询新闻信息，请检查aselectNewstype()方法！");
            return null;
        }
    }
    //根据新闻关键字查找新闻信息，并返回 rs
    public ResultSet selectNewskey(String key){
        try{
            String sql="select * from tb_news where Title like'%"+key+"%'";
            st=getStatement();
            return st.executeQuery(sql);
        }catch(Exception e){
            e.printStackTrace();
            message("无法查询新闻信息，请检查aselectNewskey()方法！");
            return null;
        }
    }    
    //查询要修改的新闻信息
    public ResultSet selectUpdateNews(String NO){
        try{
            String sql="select * from tb_news where ID='"+NO+"'";
            st=getStatement();
            return st.executeQuery(sql);
        }catch(Exception e){
            e.printStackTrace();
            message("无法查询到要修改新闻的信息，请检查输入新闻编号！");
            return null;
        }
    }
  //修改新闻信息
    public boolean updateNews(String ID,String Title,String Content,String Type,String IssDate){
        try{
            String sql="update tb_news set ID='"+ID+"',Content='"+Content+"',Type='"+Type+"',IssDate='"+IssDate+"'where ID='"+ID+"'";
            st=getStatement();
            st.executeUpdate(sql);
            return true;        
        }catch(Exception e){
            e.printStackTrace();
            message("无法进行修改新闻的信息，请检查updateNews()方法！");
            return false;
            
        }
    } 
  //查询要删除的新闻信息
    public ResultSet lookDeleteNews(){
        try{
            String sql="select * from tb_news";
            st=getStatement();
            return st.executeQuery(sql);
        }catch(Exception e){
            e.printStackTrace();
            message("无法查询到要删除新闻的信息，请检LookDeleteNews()方法！");
            return null;
        }
    }
  //查询要删除的新闻信息
    public boolean DeleteNews( String NO){
        try{
            String sql="delete  from tb_news where ID="+NO;
            st=getStatement();
            st.executeUpdate(sql);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            message("无法要删除新闻的信息，请检DeleteNews()方法！");
            return false;
        }
    }
  //一个带参数的信息提示框，供找错是用
    public void message(String msg){
        int type=JOptionPane.YES_NO_OPTION;
        String title="信息提示";
        JOptionPane.showMessageDialog(null,msg,title,type);
    }
    
    
    
}
