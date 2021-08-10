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
import javafx.scene.chart.PieChart;
import model.Doctor;
import model.Feedback;
import model.User;

/**
 *
 * @author ACER
 */
public class FeedbackDAO extends DBContext {

    /**
     * Get list of feedback base on doctor_id or rate or both
     *
     * @param doctor_id
     * @param rate
     * @return
     */
    public ArrayList<Feedback> getList(int doctor_id, int rate) {
        ArrayList<Feedback> list = new ArrayList<>();

        String sql = "Select f.ID,u.full_name as 'Doctor', u2.full_name as 'Customer',f.[user_id],f.[doctor_id] , f.feedback,f.rate,f.date_created\n"
                + "FROM Feedback f inner join [User] u on f.doctor_id = u.ID\n"
                + "				inner join [User] u2 on f.[user_id] = u2.ID ";
        if (doctor_id > 0 && rate >= 0) {
            sql += " WHERE doctor_id = ? AND rate = ?";
        } else if (rate >= 0) {
            sql += " WHERE rate = ?";
        } else if (doctor_id > 0) {
            sql += " WHERE doctor_id = ?";
        }

        try {
            PreparedStatement stm = connection.prepareStatement(sql);

            if (doctor_id > 0 && rate >= 0) {
                stm.setInt(2, rate);
                stm.setInt(1, doctor_id);
            } else if (rate >= 0) {
                stm.setInt(1, rate);
            } else if (doctor_id > 0) {
                stm.setInt(1, doctor_id);
            }

            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Doctor doctor = new Doctor();
                doctor.setId(rs.getInt("doctor_id"));
                User doc_user = new User();
                doc_user.setFull_name(rs.getString("Doctor"));
                doctor.setUser(doc_user);
                User user = new User();
                user.setId(rs.getInt("user_id"));
                user.setFull_name(rs.getString("Customer"));
                Feedback f = new Feedback(rs.getInt("ID"), user, doctor, rs.getString("feedback"), rs.getDate("date_created"), rs.getInt("rate"));
                list.add(f);
            }
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }

    public void giveFeedback(Feedback f) {

        String sql = "INSERT INTO Feedback VALUES(?,?,?,?,?,?)";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, f.getId());
            stm.setInt(2, f.getUser().getId());
            stm.setInt(3, f.getDoctor().getId());
            stm.setString(4, f.getFeedback());
            stm.setDate(5, f.getDate_created());
            stm.setInt(6, f.getRate());
            stm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public int greatestID() {
        int max = 0;
        try {
            String sql = "SELECT ID FROM Feedback ";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                if (max < rs.getInt("ID")) {
                    max = rs.getInt("ID");
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(FeedbackDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return max;
    }

    public static void main(String[] args) {
//        User u = new User();
//        u.setId(5);
//        Doctor d = new Doctor();
//        d.setId(2);
//        Feedback f = new Feedback(1, u, d, "Doc is awsome", new Date(2020, 6, 15), 5);
//        new FeedbackDAO().giveFeedback(f);\
        System.out.println(new FeedbackDAO().getList(0, -1).get(0).getDoctor().getUser().getFull_name());
    }
}
