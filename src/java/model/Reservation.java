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
 * Entity class about reservation
 */
public class Reservation {
    private int id;
    private int user_id;    
    private String full_name;
    private String phone;
    private Date dob;
    private boolean gender;
    private String insurance_code;
    private Date exam_date;
    private String exam_dept;
    private int status;
    private String detail_note;
    private Date crated_date;
    private String email;

    public Reservation(int id, int user_id, String full_name, String phone, Date dob, boolean gender, String insurance_code, Date exam_date, String exam_dept, int status, String detail_note, Date crated_date, String email) {
        this.id = id;
        this.user_id = user_id;
        this.full_name = full_name;
        this.phone = phone;
        this.dob = dob;
        this.gender = gender;
        this.insurance_code = insurance_code;
        this.exam_date = exam_date;
        this.exam_dept = exam_dept;
        this.status = status;
        this.detail_note = detail_note;
        this.crated_date = crated_date;
        this.email = email;
    }

    public Reservation() {
    }

    @Override
    public String toString() {
        return "Reservation{" + "id=" + id + ", user_id=" + user_id + ", full_name=" + full_name + ", phone=" + phone + ", dob=" + dob + ", gender=" + gender + ", insurance_code=" + insurance_code + ", exam_date=" + exam_date + ", exam_dept=" + exam_dept + ", status=" + status + ", detail_note=" + detail_note + ", crated_date=" + crated_date + ", email=" + email + '}';
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getUser_id() {
        return user_id;
    }

    public void setUser_id(int user_id) {
        this.user_id = user_id;
    }

    public String getFull_name() {
        return full_name;
    }

    public void setFull_name(String full_name) {
        this.full_name = full_name;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
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

    public String getInsurance_code() {
        return insurance_code;
    }

    public void setInsurance_code(String insurance_code) {
        this.insurance_code = insurance_code;
    }

    public Date getExam_date() {
        return exam_date;
    }

    public void setExam_date(Date exam_date) {
        this.exam_date = exam_date;
    }

    public String getExam_dept() {
        return exam_dept;
    }

    public void setExam_dept(String exam_dept) {
        this.exam_dept = exam_dept;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public String getDetail_note() {
        return detail_note;
    }

    public void setDetail_note(String detail_note) {
        this.detail_note = detail_note;
    }

    public Date getCrated_date() {
        return crated_date;
    }

    public void setCrated_date(Date crated_date) {
        this.crated_date = crated_date;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

   
}