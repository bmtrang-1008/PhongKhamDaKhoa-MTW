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
public class UserDoctor {
    private int id;
    private int role_id;
    private String fullname;
    private Date dob;
    private boolean gender;
    private String phone;
    private int dept_id;
    private String exp_year;
    private String email;

    public UserDoctor() {
    }

    public UserDoctor(int id, int role_id, String fullname, Date dob, boolean gender, String phone, int dept_id, String exp_year, String email) {
        this.id = id;
        this.role_id = role_id;
        this.fullname = fullname;
        this.dob = dob;
        this.gender = gender;
        this.phone = phone;
        this.dept_id = dept_id;
        this.exp_year = exp_year;
        this.email = email;
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

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    public String getExp_year() {
        return exp_year;
    }

    public void setExp_year(String exp_year) {
        this.exp_year = exp_year;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        return "UserDoctor{" + "id=" + id + ", role_id=" + role_id + ", fullname=" + fullname + ", dob=" + dob + ", gender=" + gender + ", phone=" + phone + ", dept_id=" + dept_id + ", exp_year=" + exp_year + ", email=" + email + '}';
    }

    
    
}
