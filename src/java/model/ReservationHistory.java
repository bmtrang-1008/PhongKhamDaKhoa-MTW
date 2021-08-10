/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author HIEU199
 * entity class about reservation history
 */
public class ReservationHistory {
    private int id;
    private int reservation_id;
    private int doctor_id;

    //constructor with params
    public ReservationHistory(int id, int reservation_id, int doctor_id) {
        this.id = id;
        this.reservation_id = reservation_id;
        this.doctor_id = doctor_id;
    }

    //default constructor
    public ReservationHistory() {
    }

    //getter and setter
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getReservation_id() {
        return reservation_id;
    }

    public void setReservation_id(int reservation_id) {
        this.reservation_id = reservation_id;
    }

    public int getDoctor_id() {
        return doctor_id;
    }

    public void setDoctor_id(int doctor_id) {
        this.doctor_id = doctor_id;
    }

    //toString method
    @Override
    public String toString() {
        return "ReservationHistory{" + "id=" + id + ", reservation_id=" + reservation_id + ", doctor_id=" + doctor_id + '}';
    }
}
