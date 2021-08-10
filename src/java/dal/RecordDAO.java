/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Biochemical;
import model.BloodCell;
import model.EntRecord;
import model.EyeRecord;
import model.InternalRecord;
import model.MaxillofacialRecord;
import model.MediPatient;
import model.MedicalRecord;
import model.PhysicalRecord;

/**
 *
 * @author Trangbmhe150464
 */
public class RecordDAO extends DBContext {

    public MedicalRecord GetRecordByCode(String code) {
        try {
            String sql = "SELECT * FROM medicalrecord WHERE [code] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, code);

            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                MedicalRecord mr = new MedicalRecord();
                mr.setId(rs.getInt("id"));
                mr.setDoctor_id(rs.getInt("doctor_id"));
                mr.setPatient_id(rs.getInt("patient_id"));
                mr.setServation_id(rs.getInt("reservation_id"));
                mr.setPhysical_id(rs.getInt("physical_id"));
                mr.setInternal_id(rs.getInt("internal_id"));
                mr.setEye_id(rs.getInt("eye_id"));
                mr.setEnt_id(rs.getInt("ent_id"));
                mr.setMaxillofacial_id(rs.getInt("maxillofacial_id"));
                mr.setDiag(rs.getString("diagnostic"));
                mr.setConclusion(rs.getString("conclusion"));
                mr.setCode(rs.getString("code"));
                return mr;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public MedicalRecord GetRecordByID(int id) {
        try {
            String sql = "SELECT * FROM medicalrecord WHERE [patient_id] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);

            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                MedicalRecord mr = new MedicalRecord();
                mr.setId(rs.getInt("id"));
                mr.setDoctor_id(rs.getInt("doctor_id"));
                mr.setPatient_id(rs.getInt("patient_id"));
                mr.setServation_id(rs.getInt("reservation_id"));
                mr.setPhysical_id(rs.getInt("physical_id"));
                mr.setInternal_id(rs.getInt("internal_id"));
                mr.setEye_id(rs.getInt("eye_id"));
                mr.setEnt_id(rs.getInt("ent_id"));
                mr.setMaxillofacial_id(rs.getInt("maxillofacial_id"));
                mr.setDiag(rs.getString("diagnostic"));
                mr.setConclusion(rs.getString("conclusion"));
                mr.setCode(rs.getString("code"));
                return mr;
            }
        } catch (SQLException ex) {
            Logger.getLogger(UserDAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    public ArrayList<MedicalRecord> getAll() {
        ArrayList<MedicalRecord> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM medicalrecord";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                MedicalRecord mr = new MedicalRecord();
                mr.setId(rs.getInt("id"));
                mr.setDoctor_id(rs.getInt("doctor_id"));
                mr.setServation_id(rs.getInt("reservation_id"));
                mr.setPhysical_id(rs.getInt("physical_id"));
                mr.setInternal_id(rs.getInt("internal_id"));
                mr.setEye_id(rs.getInt("eye_id"));
                mr.setEnt_id(rs.getInt("ent_id"));
                mr.setMaxillofacial_id(rs.getInt("maxillofacial_id"));
                mr.setDiag(rs.getString("diagnostic"));
                mr.setConclusion(rs.getString("conclusion"));
                mr.setCode(rs.getString("code"));
                list.add(mr);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void insert(MedicalRecord m) {

        try {
            String sql = "INSERT INTO MedicalRecord(doctor_id, patient_id, [diagnostic],[conclusion],[code]) VALUES(?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, m.getDoctor_id());
            stm.setInt(2, m.getPatient_id());
            stm.setString(3, m.getDiag());
            stm.setString(4, m.getConclusion());
            stm.setString(5, m.getCode());
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public ArrayList<Biochemical> getAllBio() {
        ArrayList<Biochemical> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM BioChemicalRecord";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Biochemical b = new Biochemical();
                b.setId(rs.getInt("id"));
                b.setUre(rs.getDouble("ure"));
                b.setGlucose(rs.getDouble("glucose"));
                b.setCreatinine(rs.getDouble("creatinine"));
                b.setAcid_uric(rs.getDouble("acid_uric"));
                b.setProtein(rs.getDouble("protein"));
                b.setCholesterol(rs.getDouble("cholesterol"));
                b.setCalcium(rs.getDouble("calcium"));
                b.setPh(rs.getDouble("ph"));
                b.setCode(rs.getString("code"));
                list.add(b);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public Biochemical getBioByCode(String code) {
        try {
            String sql = "SELECT * FROM BioChemicalRecord WHERE [code] = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, code);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                Biochemical b = new Biochemical();
                b.setId(rs.getInt("id"));
                b.setUre(rs.getDouble("ure"));
                b.setGlucose(rs.getDouble("glucose"));
                b.setCreatinine(rs.getDouble("creatinine"));
                b.setAcid_uric(rs.getDouble("acid_uric"));
                b.setProtein(rs.getDouble("protein"));
                b.setCholesterol(rs.getDouble("cholesterol"));
                b.setCalcium(rs.getDouble("calcium"));
                b.setPh(rs.getDouble("ph"));
                b.setCode(rs.getString("code"));
                return b;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public BloodCell getBloodCellByCode(String code) {
        try {
            String sql = "SELECT * FROM BloodCellResult WHERE code = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, code);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                BloodCell bc = new BloodCell();
                bc.setId(rs.getInt("id"));
                bc.setHc(rs.getDouble("hc"));
                bc.setHemoglobin(rs.getDouble("hemoglobin"));
                bc.setHemetocrit(rs.getDouble("hematocrit"));
                bc.setReticulocyte(rs.getDouble("reticulocyte"));
                bc.setSettled_blood(rs.getDouble("settled_blood"));
                bc.setBlood(rs.getDouble("blood"));
                bc.setPlatelet(rs.getDouble("platelet"));
                bc.setBlood_type(rs.getString("blood_type"));
                bc.setCode(rs.getString("code"));
                return bc;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public ArrayList<BloodCell> getAllBloodCell() {
        ArrayList<BloodCell> list = new ArrayList<>();
        try {
            String sql = "SELECT * FROM BloodCellResult";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                BloodCell bc = new BloodCell();
                bc.setId(rs.getInt("id"));
                bc.setHc(rs.getDouble("hc"));
                bc.setHemoglobin(rs.getDouble("hemoglobin"));
                bc.setHemetocrit(rs.getDouble("hematocrit"));
                bc.setReticulocyte(rs.getDouble("reticulocyte"));
                bc.setSettled_blood(rs.getDouble("settled_blood"));
                bc.setBlood(rs.getDouble("blood"));
                bc.setPlatelet(rs.getDouble("platelet"));
                bc.setBlood_type(rs.getString("blood_type"));
                bc.setCode(rs.getString("code"));
                list.add(bc);
            }
        } catch (Exception e) {
        }
        return list;
    }

    public PhysicalRecord getPhysicalRecordByCode(String code) {
        try {
            String sql = "SELECT * FROM PhysicalRecord WHERE code = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, code);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                PhysicalRecord r = new PhysicalRecord();
                r.setId(rs.getInt("id"));
                r.setHeight(rs.getDouble("height"));
                r.setWeight(rs.getDouble("weight"));
                r.setBMI(rs.getDouble("BMI"));
                r.setPulse_rate(rs.getInt("pulse_rate"));
                r.setBlood_pressure(rs.getInt("blood_pressure"));
                r.setPhysical_type(rs.getString("physical_type"));
                r.setCode(rs.getString("code"));
                return r;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public EyeRecord getEyeRecordByCode(String code) {
        try {
            String sql = "SELECT * FROM EyeRecord WHERE code = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, code);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                EyeRecord e = new EyeRecord();
                e.setId(rs.getInt("id"));
                e.setVision_test(rs.getString("vision_test"));
                e.setEye_disease(rs.getString("eye_disease"));
                e.setEye_type(rs.getString("eye_type"));
                e.setCode(rs.getString("code"));
                return e;
            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public EntRecord getEntRecordByCode(String code) {
        try {
            String sql = "SELECT * FROM ENTRecord WHERE code = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, code);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                EntRecord e = new EntRecord();
                e.setId(rs.getInt("id"));
                e.setHearing_test(rs.getString("hearing_test"));
                e.setNose_throat_disease(rs.getString("nose_throat_test"));
                e.setCode(rs.getString("code"));
                return e;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public InternalRecord getInByCode(String code) {
        try {
            String sql = "SELECT * FROM InternalRecord WHERE code = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, code);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                InternalRecord i = new InternalRecord();
                i.setId(rs.getInt("id"));
                i.setBlood_cycle(rs.getString("blood_cycle"));
                i.setRespiratory(rs.getString("respiratory"));
                i.setGI(rs.getString("GI"));
                i.setKidneys_unary(rs.getString("kidneys_unary"));
                i.setMusculoskeletal(rs.getString("musculoskeletal"));
                i.setNeurological(rs.getString("neurological"));
                i.setNeurospychiaric(rs.getString("neuropsychiaric"));
                i.setCode(rs.getString("code"));
                return i;

            }
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
        return null;
    }

    public MaxillofacialRecord getMaxiByCode(String code) {
        try {
            String sql = "SELECT * FROM MaxillofacialRecord WHERE code = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, code);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {
                MaxillofacialRecord m = new MaxillofacialRecord();
                m.setId(rs.getInt("id"));
                m.setUpper(rs.getString("upper_jaw"));
                m.setLower(rs.getString("lower_jaw"));
                m.setDental(rs.getString("dental_disease"));
                m.setCode(rs.getString("code"));
                return m;
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void insertBio(Biochemical b) {
        try {
            String sql = "INSERT INTO BioChemicalRecord VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setDouble(1, b.getUre());
            stm.setDouble(2, b.getGlucose());
            stm.setDouble(3, b.getCreatinine());
            stm.setDouble(4, b.getAcid_uric());
            stm.setDouble(5, b.getProtein());
            stm.setDouble(6, b.getCholesterol());
            stm.setDouble(7, b.getCalcium());
            stm.setDouble(8, b.getPh());
            stm.setString(9, b.getCode());
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }

    public void insertBlood(BloodCell b) {
        try {
            String sql = "INSERT INTO BloodCellResult VALUES (?,?,?,?,?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setDouble(1, b.getHc());
            stm.setDouble(2, b.getHemoglobin());
            stm.setDouble(3, b.getHemetocrit());
            stm.setDouble(4, b.getReticulocyte());
            stm.setDouble(5, b.getSettled_blood());
            stm.setDouble(6, b.getBlood());
            stm.setDouble(7, b.getPlatelet());
            stm.setString(8, b.getBlood_type());
            stm.setString(9, b.getCode());
            stm.executeUpdate();
        } catch (Exception e) {
            System.out.println(e.getMessage());
        }
    }
    
    public void insertPhysical(PhysicalRecord p){
        try {
            String sql = "INSERT INTO PhysicalRecord VALUES (?,?,?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setDouble(1, p.getHeight());
            stm.setDouble(2, p.getWeight());
            stm.setDouble(3, p.getBMI());
            stm.setInt(4, p.getPulse_rate());
            stm.setInt(5, p.getBlood_pressure());
            stm.setString(6, p.getPhysical_type());
            stm.setString(7, p.getCode());
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void insertENT(EntRecord e){
        try {
            String sql = "INSERT INTO ENTRecord VALUES (?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, e.getHearing_test());
            stm.setString(2, e.getNose_throat_disease());
            stm.setString(3, e.getCode());
            stm.executeUpdate();
        } catch (Exception ex) {
        }
    }
    
    public void insertEye(EyeRecord e){
        try {
             String sql = "INSERT INTO EyeRecord VALUES (?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, e.getVision_test());
            stm.setString(2, e.getEye_disease());
            stm.setString(3, e.getEye_type());
            stm.setString(4, e.getCode());
            stm.executeUpdate();
        } catch (Exception ex) {
        }
    }
    
    public void insertInternal(InternalRecord i){
        try {
            String sql = "INSERT INTO InternalRecord VALUES (?,?,?,?,?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, i.getBlood_cycle());
            stm.setString(2, i.getRespiratory());
            stm.setString(3, i.getGI());
            stm.setString(4, i.getKidneys_unary());
            stm.setString(5, i.getMusculoskeletal());
            stm.setString(6, i.getNeurological());
            stm.setString(7, i.getNeurospychiaric());
            stm.setString(8, i.getCode());
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void insertMaxi(MaxillofacialRecord m){
        try {
            String sql = "INSERT INTO MaxillofacialRecord VALUES (?,?,?,?)";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setString(1, m.getUpper());
            stm.setString(2, m.getLower());
            stm.setString(3, m.getDental());
            stm.setString(4, m.getCode());
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public ArrayList<MediPatient> getAllMediPatient(){
        ArrayList<MediPatient> list = new ArrayList<>();
        try {
            String sql = "SELECT p.id, p.name, m.diagnostic, m.conclusion, m.code FROM Patient p join MedicalRecord m on p.id = m.patient_id";
            PreparedStatement stm = connection.prepareStatement(sql);
            ResultSet rs = stm.executeQuery();
            while (rs.next()) {                
                MediPatient m = new MediPatient();
                m.setId(rs.getInt("id"));
                m.setName(rs.getString("name"));
                m.setDiag(rs.getString("diagnostic"));
                m.setConclu(rs.getString("conclusion"));
                m.setCode(rs.getString("code"));
                list.add(m);
            }
        } catch (Exception e) {
        }
        return list;
    }
    
    public void removePatient(int id){
        try {
            String sql ="DELETE FROM Patient WHERE id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void removeRecord(int id){
        try {
            String sql ="DELETE FROM MedicalRecord WHERE patient_id = ?";
            PreparedStatement stm = connection.prepareStatement(sql);
            stm.setInt(1, id);
            stm.executeUpdate();
        } catch (Exception e) {
        }
    }
    
    public void update(String diag, String f, int id){
        try {
            String sql = "UPDATE MedicalRecord SET diagnostic = ? , conclusion = ? WHERE patient_id = ?";
             PreparedStatement stm = connection.prepareStatement(sql);
             stm.setString(1, diag);
             stm.setString(2, f);
             stm.setInt(3, id);
             stm.executeUpdate();
        } catch (Exception e) {
        }
    }

    public static void main(String[] args) {
        System.out.println(new RecordDAO().GetRecordByID(6));
    }
}
