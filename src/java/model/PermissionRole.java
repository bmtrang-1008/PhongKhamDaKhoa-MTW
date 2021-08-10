/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/****
 *
 * @author trangbm
 */
public class PermissionRole {
    private int permission_id;
    private int role_id;

    public PermissionRole() {
    }

    public PermissionRole(int permission_id, int role_id) {
        this.permission_id = permission_id;
        this.role_id = role_id;
    }

    public int getPermission_id() {
        return permission_id;
    }

    public void setPermission_id(int permission_id) {
        this.permission_id = permission_id;
    }

    public int getRole_id() {
        return role_id;
    }

    public void setRole_id(int role_id) {
        this.role_id = role_id;
    }

    @Override
    public String toString() {
        return "PermissionRole{" + "permission_id=" + permission_id + ", role_id=" + role_id + '}';
    }
    
    
}
