package com.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author
 */
@Entity
@Table(name = "recommedicine")
public class RecomMedicine {

    @Id
    @Column(name = "id")
    int id;
    @Column(name = "patientname")
    String patientName;

    @Column(name = "illness")
    String illness;

    @Column(name = "medicine")
    String medicine;

    @Column(name = "referenceno")
    String referenceNo;

    @Column(name = "quantity")
    String quantity;

    @Column(name = "datevisited")
    String dateVisited;
    
    @Column(name = "doctor")
    String doctor;
    
    @Column(name = "status")
    boolean status;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getPatientName() {
        return patientName;
    }

    public void setPatientName(String patientName) {
        this.patientName = patientName;
    }

    public String getIllness() {
        return illness;
    }

    public void setIllness(String illness) {
        this.illness = illness;
    }

  

    public String getMedicine() {
        return medicine;
    }

    public void setMedicine(String medicine) {
        this.medicine = medicine;
    }

    public String getReferenceNo() {
        return referenceNo;
    }

    public void setReferenceNo(String referenceNo) {
        this.referenceNo = referenceNo;
    }


    public String getQuantity() {
        return quantity;
    }

    public void setQuantity(String quantity) {
        this.quantity = quantity;
    }

    public String getDateVisited() {
        return dateVisited;
    }

    public void setDateVisited(String dateVisited) {
        this.dateVisited = dateVisited;
    }

    public String getDoctor() {
        return doctor;
    }

    public void setDoctor(String doctor) {
        this.doctor = doctor;
    }

    public boolean isStatus() {
        return status;
    }

    public void setStatus(boolean status) {
        this.status = status;
    }

    @Override
    public String toString() {
        return "RecomMedicine{" + "id=" + id + ", patientName=" + patientName + ", Illness=" + illness + ", Medicine=" + medicine + ", refNo=" + referenceNo + ", quantity=" + quantity + ", dateVisited=" + dateVisited + '}';
    }

    
    
    
}
