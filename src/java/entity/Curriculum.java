/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entity;

/**
 *
 * @author ADMIN
 */
public class Curriculum {
    private String subjectCode;
    private String subjectName;
    private int termNo;

    public Curriculum() {
    }

    public Curriculum(String subjectCode, String subjectName, int termNo) {
        this.subjectCode = subjectCode;
        this.subjectName = subjectName;
        this.termNo = termNo;
    }

    public String getSubjectCode() {
        return subjectCode;
    }

    public void setSubjectCode(String subjectCode) {
        this.subjectCode = subjectCode;
    }

    public String getSubjectName() {
        return subjectName;
    }

    public void setSubjectName(String subjectName) {
        this.subjectName = subjectName;
    }

    public int getTermNo() {
        return termNo;
    }

    public void setTermNo(int TermNo) {
        this.termNo = TermNo;
    }
    
}
