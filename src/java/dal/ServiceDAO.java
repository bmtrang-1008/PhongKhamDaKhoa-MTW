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
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Service;

/**
 *
 * @author Trangbmhe150464
 */
public class ServiceDAO extends DBContext{
    public ArrayList<Service> GetAllService(){
        ArrayList<Service> services = new ArrayList<>();
        
        try {
            String sql = "SELECT * FROM SERVICE";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Service s = new Service();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                if(rs.getString("description") != null){
                    s.setDescription(rs.getString("description"));
                } else {
                    s.setDescription("");
                }
                services.add(s);
            }
        } catch (Exception e) {
        }
        return services;
    }
    
    public Service GetServiceByID(int id){
        try {
            String sql = "SELECT * FROM SERVICE\n" +
                        " WHERE ID = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);

            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Service s = new Service();
                s.setId(rs.getInt("id"));
                s.setName(rs.getString("name"));
                if(rs.getString("description") != null){
                    s.setDescription(rs.getString("description"));
                } else {
                    s.setDescription("");
                }
                return s;
            }
        } catch (SQLException ex) {
            Logger.getLogger(ServiceDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public static void main(String[] args) {        
        System.out.println(new ServiceDAO().GetAllService());
    }
}