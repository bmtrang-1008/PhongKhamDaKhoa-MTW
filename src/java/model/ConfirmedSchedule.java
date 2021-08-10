
package model;

import java.sql.Date;

/**
 *
 * @author ACER
 */
public class ConfirmedSchedule {
    private int ID;
    private int reservation_id;
    private int doctor_id;
    private int staff_id;
    private Date time_start;
    private Date time_end;

    public ConfirmedSchedule() {
    }

    public ConfirmedSchedule(int ID, int reservation_id, int doctor_id, int staff_id, Date time_start, Date time_end) {
        this.ID = ID;
        this.reservation_id = reservation_id;
        this.doctor_id = doctor_id;
        this.staff_id = staff_id;
        this.time_start = time_start;
        this.time_end = time_end;
    }

    public int getID() {
        return ID;
    }

    public void setID(int ID) {
        this.ID = ID;
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

    public int getStaff_id() {
        return staff_id;
    }

    public void setStaff_id(int staff_id) {
        this.staff_id = staff_id;
    }

    public Date getTime_start() {
        return time_start;
    }

    public void setTime_start(Date time_start) {
        this.time_start = time_start;
    }

    public Date getTime_end() {
        return time_end;
    }

    public void setTime_end(Date time_end) {
        this.time_end = time_end;
    }

    @Override
    public String toString() {
        return "ConfirmedSchedule{" + "ID=" + ID + ", reservation_id=" + reservation_id + ", doctor_id=" + doctor_id + ", staff_id=" + staff_id + ", time_start=" + time_start + ", time_end=" + time_end + '}';
    }
    
    
}
