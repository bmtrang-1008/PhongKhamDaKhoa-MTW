/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor...,.......
 */
package model;

import java.sql.Date;

/**
 *
 * @author HIEU19
 */
public class InternalRecord {
    private int id;
    private String blood_cycle;
    private String respiratory;
    private String GI;
    private String kidneys_unary;
    private String musculoskeletal;
    private String neurological;
    private String neurospychiaric;
    private String code;
   

    public InternalRecord() {
    }

    public InternalRecord(int id, String blood_cycle, String respiratory, String GI, String kidneys_unary, String musculoskeletal, String neurological, String neurospychiaric, String code) {
        this.id = id;
        this.blood_cycle = blood_cycle;
        this.respiratory = respiratory;
        this.GI = GI;
        this.kidneys_unary = kidneys_unary;
        this.musculoskeletal = musculoskeletal;
        this.neurological = neurological;
        this.neurospychiaric = neurospychiaric;
        this.code = code;
    }

    public InternalRecord(String blood_cycle, String respiratory, String GI, String kidneys_unary, String musculoskeletal, String neurological, String neurospychiaric, String code) {
        this.blood_cycle = blood_cycle;
        this.respiratory = respiratory;
        this.GI = GI;
        this.kidneys_unary = kidneys_unary;
        this.musculoskeletal = musculoskeletal;
        this.neurological = neurological;
        this.neurospychiaric = neurospychiaric;
        this.code = code;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBlood_cycle() {
        return blood_cycle;
    }

    public void setBlood_cycle(String blood_cycle) {
        this.blood_cycle = blood_cycle;
    }

    public String getRespiratory() {
        return respiratory;
    }

    public void setRespiratory(String respiratory) {
        this.respiratory = respiratory;
    }

    public String getGI() {
        return GI;
    }

    public void setGI(String GI) {
        this.GI = GI;
    }

    public String getKidneys_unary() {
        return kidneys_unary;
    }

    public void setKidneys_unary(String kidneys_unary) {
        this.kidneys_unary = kidneys_unary;
    }

    public String getMusculoskeletal() {
        return musculoskeletal;
    }

    public void setMusculoskeletal(String musculoskeletal) {
        this.musculoskeletal = musculoskeletal;
    }

    public String getNeurological() {
        return neurological;
    }

    public void setNeurological(String neurological) {
        this.neurological = neurological;
    }

    public String getNeurospychiaric() {
        return neurospychiaric;
    }

    public void setNeurospychiaric(String neurospychiaric) {
        this.neurospychiaric = neurospychiaric;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "InternalRecord{" + "id=" + id + ", blood_cycle=" + blood_cycle + ", respiratory=" + respiratory + ", GI=" + GI + ", kidneys_unary=" + kidneys_unary + ", musculoskeletal=" + musculoskeletal + ", neurological=" + neurological + ", neurospychiaric=" + neurospychiaric + ", code=" + code + '}';
    }
}
