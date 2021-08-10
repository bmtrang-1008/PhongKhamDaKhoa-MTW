/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Reservation;
import model.User;

/**
 *
 * @author Hung
 */
public class ReservationDAO extends DBContext {

    public List<Reservation> getAllReservation() {
        List<Reservation> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Reservation]";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Reservation r = new Reservation(
                        rs.getInt("ID"),
                        rs.getInt("user_id"),
                        rs.getString("full_name"),
                        rs.getString("phone"),
                        rs.getDate("dob"),
                        rs.getBoolean("gender"),
                        rs.getString("insurance_code"),
                        rs.getDate("examination_date"),
                        rs.getString("examination_department"),
                        rs.getInt("status"),
                        rs.getString("detail_note"),
                        rs.getDate("created_date"),
                        rs.getString("email"));
                list.add(r);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public void insert(Reservation r) {
        String sql = "Insert into Reservation(full_name,email,examination_date,examination_department,phone,insurance_code,detail_note,user_id,dob,gender,status,created_date) "
                + "values (?,?,?,?,?,?,?,?,?,?,?,?);";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, r.getFull_name());
            stm.setString(2, r.getEmail());
            stm.setDate(3, r.getExam_date());
            stm.setString(4, r.getExam_dept());
            stm.setString(5, r.getPhone());
            stm.setString(6, r.getInsurance_code());
            stm.setString(7, r.getDetail_note());
            stm.setInt(8, r.getUser_id());
            stm.setDate(9, r.getDob());
            stm.setBoolean(10, r.isGender());
            stm.setInt(11, r.getStatus());
            stm.setDate(12, r.getCrated_date());

            stm.executeUpdate();
        } catch (SQLException e) {
        }
    }

    public List<Reservation> getAllReservationByID(int id) {
        List<Reservation> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM [Reservation] where [user_id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();

            while (rs.next()) {
                Reservation r = new Reservation(
                        rs.getInt("ID"),
                        rs.getInt("user_id"),
                        rs.getString("full_name"),
                        rs.getString("phone"),
                        rs.getDate("dob"),
                        rs.getBoolean("gender"),
                        rs.getString("insurance_code"),
                        rs.getDate("examination_date"),
                        rs.getString("examination_department"),
                        rs.getInt("status"),
                        rs.getString("detail_note"),
                        rs.getDate("created_date"),
                        rs.getString("email"));
                list.add(r);
            }
        } catch (SQLException e) {
        }
        return list;
    }

    public void UpdateStatusByID(int status, int user_id, int id) {
       
        try {
            String sql = "update [Reservation] set status =? where user_id = ? and ID=?";

            PreparedStatement stm = connection.prepareStatement(sql);
             stm.setInt(1, status);
            stm.setInt(2, user_id);
            stm.setInt(3, id);
            stm.executeUpdate();

        } catch (SQLException e) {
        }
        
    }
    
    
    public void AdminUpdateStatusByID(int status,int id) {
       
        try {
            String sql = "update [Reservation] set status =? where ID=?";

            PreparedStatement stm = connection.prepareStatement(sql);
             stm.setInt(1, status);
            stm.setInt(2, id);
            stm.executeUpdate();

        } catch (SQLException e) {
        }
        
    }


    public static void main(String[] args) {
        new ReservationDAO().UpdateStatusByID(0,44, 6);
    }

}