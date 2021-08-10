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
public class EyeRecord {
    private int id;
    private String vision_test;
    private String eye_disease;
    private String eye_type;
    private String code;

    public EyeRecord(int id, String vision_test, String eye_disease, String eye_type, String code) {
        this.id = id;
        this.vision_test = vision_test;
        this.eye_disease = eye_disease;
        this.eye_type = eye_type;
        this.code = code;
    }

    public EyeRecord(String vision_test, String eye_disease, String eye_type, String code) {
        this.vision_test = vision_test;
        this.eye_disease = eye_disease;
        this.eye_type = eye_type;
        this.code = code;
    }
    
    

    public EyeRecord() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getVision_test() {
        return vision_test;
    }

    public void setVision_test(String vision_test) {
        this.vision_test = vision_test;
    }

    public String getEye_disease() {
        return eye_disease;
    }

    public void setEye_disease(String eye_disease) {
        this.eye_disease = eye_disease;
    }

    public String getEye_type() {
        return eye_type;
    }

    public void setEye_type(String eye_type) {
        this.eye_type = eye_type;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "EyeRecord{" + "id=" + id + ", vision_test=" + vision_test + ", eye_disease=" + eye_disease + ", eye_type=" + eye_type + ", code=" + code + '}';
    }

    
    
}
