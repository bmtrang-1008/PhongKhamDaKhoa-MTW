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
public class EntRecord {

    private int id;
    private String hearing_test;
    private String nose_throat_disease;
    private String code;

    public EntRecord(int id, String hearing_test, String nose_throat_disease, String code) {
        this.id = id;
        this.hearing_test = hearing_test;
        this.nose_throat_disease = nose_throat_disease;
        this.code = code;
    }

    public EntRecord(String hearing_test, String nose_throat_disease, String code) {
        this.hearing_test = hearing_test;
        this.nose_throat_disease = nose_throat_disease;
        this.code = code;
    }

    public EntRecord() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getHearing_test() {
        return hearing_test;
    }

    public void setHearing_test(String hearing_test) {
        this.hearing_test = hearing_test;
    }

    public String getNose_throat_disease() {
        return nose_throat_disease;
    }

    public void setNose_throat_disease(String nose_throat_disease) {
        this.nose_throat_disease = nose_throat_disease;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    @Override
    public String toString() {
        return "EntRecord{" + "id=" + id + ", hearing_test=" + hearing_test + ", nose_throat_disease=" + nose_throat_disease + ", code=" + code + '}';
    }

}
