/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package news_entity;

/**
 *
 * @author DELL VOSTRO 5510
 */
public class News {
    private int id;
    public String title;
    private String date;
    public String summary;
    private String contents;
    private String image;
    private String author;

    public News() {
    }

    public News(int id, String title, String date, String summary, String contents, String image, String author) {
        this.id = id;
        this.title = title;
        this.date = date;
        this.summary = summary;
        this.contents = contents;
        this.image = image;
        this.author = author;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public String getContents() {
        return contents;
    }

    public void setContent(String contents) {
        this.contents = contents;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    @Override
    public String toString() {
        return "News{" + "id=" + id + ", title=" + title + ", date=" + date + ", summary=" + summary + ", contents=" + contents + ", image=" + image + ", author=" + author + '}';
    }
    
    
}
