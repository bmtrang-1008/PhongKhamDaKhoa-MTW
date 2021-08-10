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
public class Patient {
    private int id;
    private String name;
    private int age;
    private String address;
    private String phone;
    private String option;
    private String code;
    private boolean gender;

    public Patient() {
    }

    public Patient(int id, String name, int age, String address,String phone, String option, String code, boolean gender) {
        this.id = id;
        this.name = name;
        this.age = age;
        this.address = address;
        this.phone = phone;
        this.option = option;
        this.code = code;
        this.gender = gender;
    }

    public Patient(String name, int age, String address,String phone, String option, String code, boolean gender) {
        this.name = name;
        this.age = age;
        this.address = address;
        this.phone = phone;
        this.option = option;
        this.code = code;
        this.gender = gender;
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

    public int getAge() {
        return age;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getOption() {
        return option;
    }

    public void setOption(String option) {
        this.option = option;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public boolean isGender() {
        return gender;
    }

    public void setGender(boolean gender) {
        this.gender = gender;
    }

    @Override
    public String toString() {
        return "Patient{" + "id=" + id + ", name=" + name + ", age=" + age + ", address=" + address + ", option=" + option + ", code=" + code + ", gender=" + gender + '}';
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }
}
