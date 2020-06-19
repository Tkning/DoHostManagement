/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagerManage;

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
    //添加管理员信息的方法
    public boolean addManager(String ManagerID,String ManagerName,String ManagerPassword,String RealName,String IssueDate,String mark){
        try{
                String sql="insert into manager"+"(ID,Name,Password,RealName,IssueDate,mark)"+"values("+"'"+ManagerID+"'"+","+"'"+ManagerName+"'"+","+"'"+ManagerPassword+"'"+","+"'"+RealName+"'"+","+"'"+IssueDate+"'"+","+"'"+mark+"'"+")";
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
            message("无法添加管理员信息，请检查addManager()方法！");
            return false;
        }
    }
    //查询所有管理员信息，并返回 rs
    public ResultSet selectManager(){
        try{
            String sql="select * from manager";
            st=getStatement();
            return st.executeQuery(sql);
        }catch(Exception e){
            e.printStackTrace();
            message("无法查询管理员信息，请检查selectManager()方法！");
            return null;
        }
    }
    //查询登录管理员信息，并返回 rs
    public ResultSet selectloginManager(String name,String password){
        try{
            String sql="select * from manager where Name='"+name+"'and Password='"+password+"'";
            st=getStatement();
            return st.executeQuery(sql);        
        }catch(Exception e){
            e.printStackTrace();
            message("无法登录，请检查selectloginManager()方法！");
            return null;
        }
    }    
    //查询要修改的管理员信息
    public ResultSet selectUpdateManager(String NO){
        try{
            String sql="select * from manager where ID='"+NO+"'";
            st=getStatement();
            return st.executeQuery(sql);
        }catch(Exception e){
            e.printStackTrace();
            message("无法查询到要修改管理员的信息，请检查输入管理员编号！");
            return null;
        }
    }
    //修改管理员信息
    public boolean updateManager(String ManagerID,String ManagerName,String ManagerPassword,String RealName,String IssueDate,String mark){
        try{
            String sql="update manager set ID='"+ManagerID+"',Name='"+ManagerName+"',Name='"+ManagerPassword+"',RealName='"+RealName+"',IssueDate='"+IssueDate+"',mark='"+mark+"'where ID='"+ManagerID+"'";
            st=getStatement();
            st.executeUpdate(sql);
            return true;        
        }catch(Exception e){
            e.printStackTrace();
            message("无法进行修改管理员的信息，请检查updateManager()方法！");
            return false;
            
        }
    } 
    //修改密码
    public boolean updatepassword(String RealName,String ManagerPassword){
        try{
                String sql="update manager set Password='"+ManagerPassword+"'where RealName='"+RealName+"'";
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
            message("无法进行修改密码的信息，请检查updatepassword()方法！");
            return false;
        }
    }    
   
    //查询要删除的管理员信息
    public ResultSet lookDeleteManager(){
        try{
            String sql="select * from manager";
            st=getStatement();
            return st.executeQuery(sql);
        }catch(Exception e){
            e.printStackTrace();
            message("无法查询到要删除管理员的信息，请检LookDeleteManager()方法！");
            return null;
        }
    }
    //查询要删除的管理员信息
    public boolean DeleteManager( String NO){
        try{
            String sql="delete  from manager where ID="+NO;
            st=getStatement();
            st.executeUpdate(sql);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            message("无法要删除管理员的信息，请检DeleteManager()方法！");
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
