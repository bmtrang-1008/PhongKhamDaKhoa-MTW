/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.......,
 */
package model;

/**
 *
 * @author HIEU19
 */
public class MaxillofacialRecord {
    private int id;
    private String upper;
    private String lower;
    private String dental;
    private String code;

    public MaxillofacialRecord() {
    }

    public MaxillofacialRecord(int id, String upper, String lower, String dental, String code) {
        this.id = id;
        this.upper = upper;
        this.lower = lower;
        this.dental = dental;
        this.code = code;
    }

    public MaxillofacialRecord(String upper, String lower, String dental, String code) {
        this.upper = upper;
        this.lower = lower;
        this.dental = dental;
        this.code = code;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUpper() {
        return upper;
    }

    public void setUpper(String upper) {
        this.upper = upper;
    }

    public String getLower() {
        return lower;
    }

    public void setLower(String lower) {
        this.lower = lower;
    }

    public String getDental() {
        return dental;
    }

    public void setDental(String dental) {
        this.dental = dental;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "MaxillofacialRecord{" + "id=" + id + ", upper=" + upper + ", lower=" + lower + ", dental=" + dental + ", code=" + code + '}';
    }
    
    
}
