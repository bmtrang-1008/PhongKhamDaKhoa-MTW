/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author HIEU19
 */
public class Feedback {

    private int id;
    private User user;
    private Doctor doctor;
    private String feedback;
    private Date date_created;
    private int rate;
    
    public Feedback() {
    }

    public Feedback(int id, User user, Doctor doctor, String feedback, Date date_created, int rate) {
        this.id = id;
        this.user = user;
        this.doctor = doctor;
        this.feedback = feedback;
        this.date_created = date_created;
        this.rate = rate;
    }

    public int getRate() {
        return rate;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Doctor getDoctor() {
        return doctor;
    }

    public void setDoctor(Doctor doctor) {
        this.doctor = doctor;
    }

    public String getFeedback() {
        return feedback;
    }

    public void setFeedback(String feedback) {
        this.feedback = feedback;
    }

    public Date getDate_created() {
        return date_created;
    }

    public void setDate_created(Date date_created) {
        this.date_created = date_created;
    }

    @Override
    public String toString() {
        return "Feedback{" + "id=" + id + ", user=" + user + ", doctor=" + doctor + ", feedback=" + feedback + ", date_created=" + date_created + ", rate=" + rate + '}';
    }
   
}
