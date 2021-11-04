/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

import java.sql.Date;

/**
 *
 * @author ADMIN
 */
public class Schedule {
    private int subjectCode;
    private String subjectName;
    private Date date;
    private String roomNo;
    private String time;
    private String examForm;

    public Schedule() {
    }

    public Schedule(int subjectCode, String subjectName, Date date, String roomNo, String time, String examForm) {
        this.subjectCode = subjectCode;
        this.subjectName = subjectName;
        this.date = date;
        this.roomNo = roomNo;
        this.time = time;
        this.examForm = examForm;
    }

    public int getSubjectCode() {
        return subjectCode;
    }

    public void setSubjectCode(int subjectCode) {
        this.subjectCode = subjectCode;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }
    
    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getRoomNo() {
        return roomNo;
    }

    public void setRoomNo(String roomNo) {
        this.roomNo = roomNo;
    }

    public String getTime() {
        return time;
    }

    public void setTime(String time) {
        this.time = time;
    }

    public String getExamForm() {
        return examForm;
    }

    public void setExamForm(String examForm) {
        this.examForm = examForm;
    }

    @Override
    public String toString() {
        return "Schedule{" + "subjectCode=" + subjectCode + ", subjectName=" + subjectName + ", date=" + date + ", roomNo=" + roomNo + ", time=" + time + ", examForm=" + examForm + '}';
    }
    
}
