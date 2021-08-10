/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Date;

/**
 *
 * @author HIEU19
 */
public class Biochemical {

    private int id;
    private double ure;
    private double glucose;
    private double creatinine;
    private double acid_uric;
    private double protein;
    private double cholesterol;
    private double calcium;
    private double ph;
    private String code;

    public Biochemical() {
    }

    public Biochemical(int id, double ure, double glucose, double creatinine, double acid_uric, double protein, double cholesterol, double calcium, double ph, String code) {
        this.id = id;
        this.ure = ure;
        this.glucose = glucose;
        this.creatinine = creatinine;
        this.acid_uric = acid_uric;
        this.protein = protein;
        this.cholesterol = cholesterol;
        this.calcium = calcium;
        this.ph = ph;
        this.code = code;
        
    }

    public Biochemical(double ure, double glucose, double creatinine, double acid_uric, double protein, double cholesterol, double calcium, double ph, String code) {
        this.ure = ure;
        this.glucose = glucose;
        this.creatinine = creatinine;
        this.acid_uric = acid_uric;
        this.protein = protein;
        this.cholesterol = cholesterol;
        this.calcium = calcium;
        this.ph = ph;
        this.code = code;
    }
    
    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getUre() {
        return ure;
    }

    public void setUre(double ure) {
        this.ure = ure;
    }

    public double getGlucose() {
        return glucose;
    }

    public void setGlucose(double glucose) {
        this.glucose = glucose;
    }

    public double getCreatinine() {
        return creatinine;
    }

    public void setCreatinine(double creatinine) {
        this.creatinine = creatinine;
    }

    public double getAcid_uric() {
        return acid_uric;
    }

    public void setAcid_uric(double acid_uric) {
        this.acid_uric = acid_uric;
    }

    public double getProtein() {
        return protein;
    }

    public void setProtein(double protein) {
        this.protein = protein;
    }

    public double getCholesterol() {
        return cholesterol;
    }

    public void setCholesterol(double cholesterol) {
        this.cholesterol = cholesterol;
    }

    public double getCalcium() {
        return calcium;
    }

    public void setCalcium(double calcium) {
        this.calcium = calcium;
    }

    public double getPh() {
        return ph;
    }

    public void setPh(double ph) {
        this.ph = ph;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "Biochemical{" + "id=" + id + ", ure=" + ure + ", glucose=" + glucose + ", creatinine=" + creatinine + ", acid_uric=" + acid_uric + ", protein=" + protein + ", cholesterol=" + cholesterol + ", calcium=" + calcium + ", ph=" + ph + ", code=" + code + '}';
    }


   
}
