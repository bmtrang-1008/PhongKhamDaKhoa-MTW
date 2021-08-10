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
public class User {
    private int id;
    private int role_id;
    private String username;
    private String password;
    private String email;
    private String phone;
    private String full_name;
    private Date dob;
    private boolean gender;
    private String avatar;
    private Date created_date;


    public User() {
    }

    public User(int id, int role_id, String username, String password, String email, String phone, String full_name, Date dob, boolean gender, String avatar, Date created_date) {
        this.id = id;
        this.role_id = role_id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.full_name = full_name;
        this.dob = dob;
        this.gender = gender;
        this.avatar = avatar;
        this.created_date = created_date;

    }

    public User(int role_id, String username, String password, String email, String phone, String full_name, Date dob, boolean gender, String avatar, Date created_date) {
        this.role_id = role_id;
        this.username = username;
        this.password = password;
        this.email = email;
        this.phone = phone;
        this.full_name = full_name;
        this.dob = dob;
        this.gender = gender;
        this.avatar = avatar;
        this.created_date = created_date;
        
    }


    @Override
    public String toString() {
        return "User{" + "id=" + id + ", role_id=" + role_id + ", username=" + username + ", password=" + password + ", email=" + email + ", phone=" + phone + ", full_name=" + full_name + ", dob=" + dob + ", gender=" + gender + ", avatar=" + avatar + ", created_date=" + created_date + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public Date getDob() {
        return dob;
    }

    public void setDob(Date dob) {
        this.dob = dob;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    public String getAvatar() {
        return avatar;
    }

    public void setAvatar(String avatar) {
        this.avatar = avatar;
    }

    public Date getCreated_date() {
        return created_date;
    }

    public void setCreated_date(Date created_date) {
        this.created_date = created_date;
    } 
}
