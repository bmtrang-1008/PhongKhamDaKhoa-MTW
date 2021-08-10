package model;

import java.sql.Date;

/**
 *
 * @author ACER
 */
public class Doctor {
    private User user;
    private int id;
    private int dept_id;
    private int room_number;
    private String exp_year;
    
    public Doctor() {
    }

    public Doctor(int dept_id, int room_number, String exp_year) {
        this.dept_id = dept_id;
        this.room_number = room_number;
        this.exp_year = exp_year;
    }

    public Doctor(User user, int id, int dept_id, int room_number, String exp_year) {
        this.user = user;
        this.id = id;
        this.dept_id = dept_id;
        this.room_number = room_number;
        this.exp_year = exp_year;
    }

    public Doctor(int id, int dept_id, int room_number, String exp_year) {
        this.id = id;
        this.dept_id = dept_id;
        this.room_number = room_number;
        this.exp_year = exp_year;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getRoom_number() {
        return room_number;
    }

    public void setRoom_number(int room_number) {
        this.room_number = room_number;
    }

    public String getExp_year() {
        return exp_year;
    }

    public void setExp_year(String exp_year) {
        this.exp_year = exp_year;
    }

    public int getDept_id() {
        return dept_id;
    }

    public void setDept_id(int dept_id) {
        this.dept_id = dept_id;
    }

    @Override
    public String toString() {
        return "Doctor{" + "id=" + id + ", dept_id=" + dept_id + ", room_number=" + room_number + ", exp_year=" + exp_year + '}';
    }

    
    
}
