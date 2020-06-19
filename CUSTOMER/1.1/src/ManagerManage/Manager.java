/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package ManagerManage;

/**
 *
 * @author Administrator
 */
public class Manager {
    private String ManagerID;
    private String ManagerName;
    private String ManagerPassword;
    private String RealName;
    private String IssueDate;
    private String mark;

    /**
     * @return the ManagerID
     */
    public String getManagerID() {
        return ManagerID;
    }

    /**
     * @param ManagerID the ManagerID to set
     */
    public void setManagerID(String ManagerID) {
        this.ManagerID = ManagerID;
    }

    /**
     * @return the ManagerName
     */
    public String getManagerName() {
        return ManagerName;
    }

    /**
     * @param ManagerName the ManagerName to set
     */
    public void setManagerName(String ManagerName) {
        this.ManagerName = ManagerName;
    }

    /**
     * @return the ManagerPassword
     */
    public String getManagerPassword() {
        return ManagerPassword;
    }

    /**
     * @param ManagerPassword the ManagerPassword to set
     */
    public void setManagerPassword(String ManagerPassword) {
        this.ManagerPassword = ManagerPassword;
    }

    /**
     * @return the RealName
     */
    public String getRealName() {
        return RealName;
    }

    /**
     * @param RealName the RealName to set
     */
    public void setRealName(String RealName) {
        this.RealName = RealName;
    }

    /**
     * @return the IssueDate
     */
    public String getIssueDate() {
        return IssueDate;
    }

    /**
     * @param IssueDate the IssueDate to set
     */
    public void setIssueDate(String IssueDate) {
        this.IssueDate = IssueDate;
    }
    
    /**
     * @return the mark
     */
    public String getMark() {
        return mark;
    }

    /**
     * @param mark the mark to set
     */
    public void setMark(String mark) {
        this.mark = mark;
    }
}
