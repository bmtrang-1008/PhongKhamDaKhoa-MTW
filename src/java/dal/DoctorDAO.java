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
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Doctor;
import model.User;
import model.UserDoctor;

/**
 *
 * @author Trangbmhe150464
 */
public class DoctorDAO extends DBContext { //get doctors info
//    public Doctor getDoctorById(int id){
//        try {
//            String sql = "SELECT department_id, room_number, exp_year FROM [Doctor] "
//                    + "WHERE [doctor_id] = ? ";
//            PreparedStatement stm = connection.prepareStatement(sql);
//            stm.setInt(1, id);
//
//            ResultSet rs = stm.executeQuery();
//            while (rs.next()) {
//                Doctor doc = new Doctor();
//                doc.setDept_id(rs.getInt("dept_id"));
//                doc.setRoom_number(rs.getString("room_number"));
//                doc.setExp_year(rs.getInt("exp_year"));
//                
//                return doc;
//            }
//        } catch (SQLException ex) {
//            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
//        }
//        return null;
//    }

    public ArrayList<Doctor> getDoctor() {
        ArrayList<Doctor> doctors = new ArrayList<>();
        String sql = "SELECT * FROM [user] u INNER JOIN Doctor d ON u.id = d.doctor_id WHERE role_id = 3";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Doctor d = new Doctor(new User(rs.getInt("ID"),
                        rs.getInt("role_id"), rs.getString("username"),
                        rs.getString("password"), rs.getString("email"),
                        rs.getString("phone"), rs.getString("full_name"),
                        rs.getDate("dob"), rs.getBoolean("gender"), rs.getString("avatar"), rs.getDate("created_date")),
                        rs.getInt("doctor_id"), rs.getInt("department_id"), rs.getInt("room_number"), rs.getString("exp_year"));
                doctors.add(d);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return doctors;
    }

    public void insert(Doctor d) {
        int n = 0;
        try {
            String sql = "INSERT INTO doctor(doctor_id, department_id, room_number,exp_year, status) VALUES(?,?,?,?,0)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, d.getId());
            stm.setInt(2, d.getDept_id());
            stm.setInt(3, d.getRoom_number());
            stm.setString(4, d.getExp_year());
            n = stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Doctor getOne(int did) {

        String sql = "SELECT * FROM [user] u INNER JOIN Doctor d ON u.id = d.doctor_id WHERE role_id = 3";
        if (did > 0) {
            sql += " AND d.doctor_id = ?";
        }
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            if (did > 0) {
                stm.setInt(1, did);
            }
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Doctor d = new Doctor(new User(rs.getInt("ID"),
                        rs.getInt("role_id"), rs.getString("username"),
                        rs.getString("password"), rs.getString("email"),
                        rs.getString("phone"), rs.getString("full_name"),
                        rs.getDate("dob"), rs.getBoolean("gender"), rs.getString("avatar"), rs.getDate("created_date")),
                        rs.getInt("doctor_id"), rs.getInt("department_id"), rs.getInt("room_number"), rs.getString("exp_year"));
                return d;
            }
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }

        return null;
    }

    public boolean Update(Doctor d) {

        String sql = "UPDATE Doctor \n"
                + "SET department_id = ? ,exp_year = ? ,room_number = ?\n"
                + "WHERE doctor_id = ?";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, d.getDept_id());
            stm.setDate(2, Date.valueOf(d.getExp_year().split(" ")[0]));
            stm.setInt(3, d.getRoom_number());
            stm.setInt(4, d.getId());
            stm.executeUpdate();
            String sql2 = "UPDATE [User] \n"
                    + "SET dob = ?, email = ? , phone = ?, full_name = ?,gender = ?\n"
                    + "WHERE ID = ?";
            PreparedStatement stm2 = connection.prepareStatement(sql2);
            stm2.setDate(1, d.getUser().getDob());
            stm2.setString(2, d.getUser().getEmail());
            stm2.setString(4, d.getUser().getFull_name());
            stm2.setString(3, d.getUser().getPhone());
            int gender = 0;
            if (d.getUser().isGender()) {
                gender = 1;
            }
            stm2.setInt(5, gender);
            stm2.setInt(6, d.getUser().getId());
            stm2.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
            return false;
        }
        return true;
    }

    public ArrayList<UserDoctor> getUserDoctors() {
        ArrayList<UserDoctor> list = new ArrayList<>();
        try {
            String sql = "select u.ID , u.role_id, u.full_name, u.dob, u.gender, d.department_id, d.room_number, d.exp_year, u.phone, u.email from [User] u join Doctor d on u.ID = d.doctor_id where d.status = 0 and u.role_id = 4;";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                UserDoctor ud = new UserDoctor();
                ud.setId(rs.getInt("ID"));
                ud.setRole_id(rs.getInt("role_id"));
                ud.setFullname(rs.getString("full_name"));
                ud.setDob(rs.getDate("dob"));
                ud.setGender(rs.getBoolean("gender"));
                ud.setPhone(rs.getString("phone"));
                ud.setDept_id(rs.getInt("department_id"));
                ud.setExp_year(rs.getString("exp_year"));
                ud.setEmail(rs.getString("email"));
                list.add(ud);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public void deny(int id){
        try {
            String sql = "DELETE from [Doctor] WHERE doctor_id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void apply(int id){
        try {
            String sql = "UPDATE [Doctor] SET status = 1 where doctor_id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
 

    public static void main(String[] args) {
//        Doctor d = new Doctor();
//        d.setDept_id(7);
//        d.setRoom_number(7);
//        d.setExp_year("10 years");
//        new DoctorDAO().insert(d);
System.out.println(new DoctorDAO().getDoctor());
    }
}
