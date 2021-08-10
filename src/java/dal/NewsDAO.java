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
import model.Doctor;
import model.Journalist;
import model.News;
import model.User;

/**
 *
 * @author ACER
 */
public class NewsDAO extends DBContext{
    /**
     * get all news
     * @return 
     */
    public ArrayList<News> getList() {
        ArrayList<News> list = new ArrayList<>();
        String sql = "SELECT n.id as 'newsID',n.title,n.url,n.description,n.image,n.date_create,j.id,j.name,j.image as 'jimage' FROM [News] n inner join Journalist j ON n.journalist_id = j.id";
        try {
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                News n = new News(rs.getInt("newsID"),
                        rs.getString("title"),
                        rs.getString("url"),
                        rs.getString("description")
                        ,rs.getString("image"),rs.getString("date_create"), new Journalist(rs.getInt("id"), rs.getString("name"),rs.getString("jimage")));
                list.add(n);
            }
        } catch (SQLException ex) {
            Logger.getLogger(DoctorDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    public static void main(String[] args) {
        System.out.println(new NewsDAO().getList());
    }
}
