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
public class MediPatient {
    private int id;
    private String name;
    private String diag;
    private String conclu;
    private String code;

    public MediPatient(int id, String name, String diag, String conclu, String code) {
        this.id = id;
        this.name = name;
        this.diag = diag;
        this.conclu = conclu;
        this.code = code;
    }

    public MediPatient() {
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDiag() {
        return diag;
    }

    public void setDiag(String diag) {
        this.diag = diag;
    }

    public String getConclu() {
        return conclu;
    }

    public void setConclu(String conclu) {
        this.conclu = conclu;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }
    
    
}
