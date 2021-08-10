/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ACER
 */
public class News {
    private int id;
    private String title;
    private String url;
    private String description;
    private String image;
    private String date_create;
    private Journalist journalist;

    public News() {
    }

    public News(int id, String title, String url, String description, String image, String date_create, Journalist journalist) {
        this.id = id;
        this.title = title;
        this.url = url;
        this.description = description;
        this.image = image;
        this.date_create = date_create;
        this.journalist = journalist;
    }

    public String getDate_create() {
        return date_create;
    }

    public void setDate_create(String date_create) {
        this.date_create = date_create;
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

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public Journalist getJournalist() {
        return journalist;
    }

    public void setJournalist(Journalist journalist) {
        this.journalist = journalist;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    @Override
    public String toString() {
        return "News{" + "id=" + id + ", title=" + title + ", url=" + url + ", description=" + description + ", image=" + image + ", date_create=" + date_create + ", journalist=" + journalist + '}';
    }

   
   
    
    
}
