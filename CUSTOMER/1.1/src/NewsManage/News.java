/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package NewsManage;

/**
 *
 * @author Administrator
 */
public class News {
    private String NewsID;
    private String NewsTitle;
    private String NewsContent;
    private String NewsType;
    private String NewsIssDate;
    private String NewsPicture;

    /**
     * @return the NewsID
     */
    public String getNewsID() {
        return NewsID;
    }

    /**
     * @param NewsID the NewsID to set
     */
    public void setNewsID(String NewsID) {
        this.NewsID = NewsID;
    }

    /**
     * @return the NewsTitle
     */
    public String getNewsTitle() {
        return NewsTitle;
    }

    /**
     * @param NewsTitle the NewsTitle to set
     */
    public void setNewsTitle(String NewsTitle) {
        this.NewsTitle = NewsTitle;
    }

    /**
     * @return the NewsContent
     */
    public String getNewsContent() {
        return NewsContent;
    }

    /**
     * @param studentSex the studentSex to set
     */
    public void setNewsContent(String NewsContent) {
        this.NewsContent = NewsContent;
    }

    /**
     * @return the NewsType
     */
    public String getNewsType() {
        return NewsType;
    }

    /**
     * @param NewsType the NewsType to set
     */
    public void setNewsType(String NewsType) {
        this.NewsType = NewsType;
    }

    /**
     * @return the NewsIssDate
     */
    public String getNewsIssDate() {
        return NewsIssDate;
    }

    /**
     * @param NewsIssDate the NewsIssDate to set
     */
    public void setNewsIssDate(String NewsIssDate) {
        this.NewsIssDate= NewsIssDate;
    }
    /**
     * @return the NewsPicture
     */
    public String getNewsPicture() {
        return NewsPicture;
    }

    /**
     * @param NewsPicture the NewsPicture to set
     */
    public void setNewsPicture(String NewsPicture) {
        this.NewsPicture= NewsPicture;
    }
}
