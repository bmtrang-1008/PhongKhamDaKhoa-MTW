/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Patient;
import model.User;

/**
 *
 * @author Trangbmhe150464
 */
public class PatientDAO extends DBContext{
    public User getPatientById(int id){
        try {
            String sql = "SELECT email, phone, full_name, dob, gender, avatar, created_date FROM [User] "
                    + "WHERE [id] = ? and [role_id] = 1";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);

            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                User patient = new User();
                patient.setEmail(rs.getString("email"));
                patient.setPhone(rs.getString("phone"));
                patient.setFull_name(rs.getString("full_name"));
                patient.setDob(rs.getDate("dob"));
                patient.setGender(rs.getBoolean("gender"));
                patient.setAvatar(rs.getString("avatar"));
                patient.setCreated_date(rs.getDate("created_date"));
                return patient;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public void insert(Patient p){
        try {
            String sql = "INSERT INTO patient VALUES(?,?,?,?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, p.getId());
            stm.setString(2, p.getName());
            stm.setInt(3, p.getAge());
            stm.setString(4, p.getAddress());
            stm.setString(5, p.getOption());
            stm.setString(6, p.getCode());
            stm.setBoolean(7, p.isGender());
            stm.setString(8, p.getPhone());
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public ArrayList<Patient> getPatient(){
        ArrayList<Patient> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Patient";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {                
                Patient p = new Patient();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setAge(rs.getInt("age"));
                p.setAddress(rs.getString("address"));
                p.setPhone(rs.getString("phone"));
                p.setOption(rs.getString("option"));
                p.setCode(rs.getString("code"));
                p.setGender(rs.getBoolean("gender"));
                list.add(p);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    
    public Patient getPatientByIdd(int id){
        try {
            String sql = "SELECT * FROM Patient WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {                
                Patient p = new Patient();
                p.setId(rs.getInt("id"));
                p.setName(rs.getString("name"));
                p.setAge(rs.getInt("age"));
                p.setAddress(rs.getString("address"));
                p.setPhone(rs.getString("phone"));
                p.setOption(rs.getString("option"));
                p.setCode(rs.getString("code"));
                p.setGender(rs.getBoolean("gender"));
                return p;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public static void main(String[] args) {
        new PatientDAO().insert(new Patient(2, "Halaand", 21, "Norway", "0912390812", "Insurance", "asduihaiusd", true));
    }
    
}
