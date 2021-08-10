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
public class MedicalRecord {
    private int id;
    private int doctor_id;
    private int patient_id;
    private int servation_id;
    private int physical_id;
    private int internal_id;
    private int eye_id;
    private int ent_id;
    private int maxillofacial_id;
    private String diag;
    private String conclusion;
    private String code;
    

    public MedicalRecord() {
    }

    public MedicalRecord(int id, int doctor_id,int patient_id, int servation_id, int physical_id, int internal_id, int eye_id, int ent_id, int maxillofacial_id, String diag, String conclusion, String code) {
        this.id = id;
        this.doctor_id = doctor_id;
        this.patient_id = patient_id;
        this.servation_id = servation_id;
        this.physical_id = physical_id;
        this.internal_id = internal_id;
        this.eye_id = eye_id;
        this.ent_id = ent_id;
        this.maxillofacial_id = maxillofacial_id;
        this.diag = diag;
        this.conclusion = conclusion;
        this.code = code;
    }

    public MedicalRecord(int doctor_id, int servation_id, int physical_id, int internal_id, int eye_id, int ent_id, int maxillofacial_id, String diag, String conclusion, String code) {
        this.doctor_id = doctor_id;
        this.servation_id = servation_id;
        this.physical_id = physical_id;
        this.internal_id = internal_id;
        this.eye_id = eye_id;
        this.ent_id = ent_id;
        this.maxillofacial_id = maxillofacial_id;
        this.diag = diag;
        this.conclusion = conclusion;
        this.code = code;
    }
    
        


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(int doctor_id) {
        this.doctor_id = doctor_id;
    }

    public int getServation_id() {
        return servation_id;
    }

    public void setServation_id(int servation_id) {
        this.servation_id = servation_id;
    }

    public int getPhysical_id() {
        return physical_id;
    }

    public void setPhysical_id(int physical_id) {
        this.physical_id = physical_id;
    }

    public int getInternal_id() {
        return internal_id;
    }

    public void setInternal_id(int internal_id) {
        this.internal_id = internal_id;
    }

    public int getEye_id() {
        return eye_id;
    }

    public void setEye_id(int eye_id) {
        this.eye_id = eye_id;
    }

    public int getEnt_id() {
        return ent_id;
    }

    public void setEnt_id(int ent_id) {
        this.ent_id = ent_id;
    }

    public int getMaxillofacial_id() {
        return maxillofacial_id;
    }

    public void setMaxillofacial_id(int maxillofacial_id) {
        this.maxillofacial_id = maxillofacial_id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

 
  

    public String getDiag() {
        return diag;
    }

    public void setDiag(String diag) {
        this.diag = diag;
    }

    public String getConclusion() {
        return conclusion;
    }

    public void setConclusion(String conclusion) {
        this.conclusion = conclusion;
    }

    public int getPatient_id() {
        return patient_id;
    }

    public void setPatient_id(int patient_id) {
        this.patient_id = patient_id;
    }

    @Override
    public String toString() {
        return "MedicalRecord{" + "id=" + id + ", doctor_id=" + doctor_id + ", patient_id=" + patient_id + ", servation_id=" + servation_id + ", physical_id=" + physical_id + ", internal_id=" + internal_id + ", eye_id=" + eye_id + ", ent_id=" + ent_id + ", maxillofacial_id=" + maxillofacial_id + ", diag=" + diag + ", conclusion=" + conclusion + ", code=" + code + '}';
    }
    
}
