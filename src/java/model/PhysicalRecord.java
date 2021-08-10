/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Trangbm
 */
public class PhysicalRecord {
 private int id;
 private double height;
 private double weight;
 private double BMI;
 private int pulse_rate;
 private int blood_pressure;
 private String physical_type;
 private String code;

    public PhysicalRecord() {
    }

    public PhysicalRecord(int id, double height, double weight, double BMI, int pulse_rate, int blood_pressure, String physical_type, String code) {
        this.id = id;
        this.height = height;
        this.weight = weight;
        this.BMI = BMI;
        this.pulse_rate = pulse_rate;
        this.blood_pressure = blood_pressure;
        this.physical_type = physical_type;
        this.code = code;
    }

    public PhysicalRecord(double height, double weight, double BMI, int pulse_rate, int blood_pressure, String physical_type, String code) {
        this.height = height;
        this.weight = weight;
        this.BMI = BMI;
        this.pulse_rate = pulse_rate;
        this.blood_pressure = blood_pressure;
        this.physical_type = physical_type;
        this.code = code;
    }

    
    
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getHeight() {
        return height;
    }

    public void setHeight(double height) {
        this.height = height;
    }

    public double getWeight() {
        return weight;
    }

    public void setWeight(double weight) {
        this.weight = weight;
    }

    public double getBMI() {
        return BMI;
    }

    public void setBMI(double BMI) {
        this.BMI = BMI;
    }

    public int getPulse_rate() {
        return pulse_rate;
    }

    public void setPulse_rate(int pulse_rate) {
        this.pulse_rate = pulse_rate;
    }

    public int getBlood_pressure() {
        return blood_pressure;
    }

    public void setBlood_pressure(int blood_pressure) {
        this.blood_pressure = blood_pressure;
    }

    public String getPhysical_type() {
        return physical_type;
    }

    public void setPhysical_type(String physical_type) {
        this.physical_type = physical_type;
    }
 
    @Override
    public String toString() {
        return "PhysicalRecord{" + "id=" + id + ", height=" + height + ", weight=" + weight + ", BMI=" + BMI + ", pulse_rate=" + pulse_rate + ", blood_pressure=" + blood_pressure + ", physical_type=" + physical_type + '}';
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
}
