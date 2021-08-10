/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author HIEU19
 */
public class Role {
    private int id;
    private String role_name;
    private String role_des;

    public Role() {
    }

    public Role(int id, String role_name, String role_des) {
        this.id = id;
        this.role_name = role_name;
        this.role_des = role_des;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getRole_name() {
        return role_name;
    }

    public void setRole_name(String role_name) {
        this.role_name = role_name;
    }

    public String getRole_des() {
        return role_des;
    }

    public void setRole_des(String role_des) {
        this.role_des = role_des;
    }

    @Override
    public String toString() {
        return "Role{" + "id=" + id + ", role_name=" + role_name + ", role_des=" + role_des + '}';
    }
    
    
}
