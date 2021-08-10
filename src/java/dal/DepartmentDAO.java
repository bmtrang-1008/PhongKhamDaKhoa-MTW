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
import model.Department;

/**
 *
 * @author HIEU19
 */
public class DepartmentDAO extends DBContext{
    public ArrayList<Department> getAll(){
        ArrayList<Department> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM Department";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {                
                Department d = new Department();
                d.setID(rs.getInt("ID"));
                d.setDept_name(rs.getString("dept_name"));
                d.setDept_description(rs.getString("dept_description"));
                list.add(d);
            }
        } catch (SQLException e) {
        }
        return list;
    }
    public static void main(String[] args) {
        System.out.println(new DepartmentDAO().getAll());
    }
}
