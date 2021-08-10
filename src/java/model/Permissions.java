/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author trangbm
 */
public class Permissions {
    private int id;
    private String permission_name;

    public Permissions(int id, String permission_name) {
        this.id = id;
        this.permission_name = permission_name;
    }

    public Permissions() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPermission_name() {
        return permission_name;
    }

    public void setPermission_name(String permission_name) {
        this.permission_name = permission_name;
    }

    @Override
    public String toString() {
        return "Permissions{" + "id=" + id + ", permission_name=" + permission_name + '}';
    }
}
