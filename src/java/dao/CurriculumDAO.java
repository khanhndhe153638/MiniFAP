/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Curriculum;
import entity.Schedule;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class CurriculumDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public List<Curriculum> getAllCurriculum() {
        List<Curriculum> list = new ArrayList<>();
        String query = "select * from Curriculum";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Curriculum(rs.getString(1),
                        rs.getString(2),
                        rs.getInt(3)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public List<Schedule> getAllSchedule() {
        List<Schedule> list = new ArrayList<>();
        String query = "select * from Schedule";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Schedule(rs.getInt(1),
                        rs.getString(2),
                        rs.getDate(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }

    public void insertSubject(String code, String name, String date, String room, String time, String form) {
        String query = "insert into Schedule\n"
                + "values(?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, code);
            ps.setString(2, name);
            ps.setString(3, date);
            ps.setString(4, room);
            ps.setString(5, time);
            ps.setString(6, form);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public Schedule getSubjectByCode(String code) {
        try {
            String query = "select * from Schedule\n"
                    + "where subjectCode = ?";
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, code);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Schedule(rs.getInt(1),
                        rs.getString(2),
                        rs.getDate(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void editSubject(String date, String room, String time, String code) {
        String query = "update Schedule\n"
                + "set [Date] = ?,\n"
                + "RoomNo = ?,\n"
                + "[Time] = ?\n"
                + "where subjectCode = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, date);
            ps.setString(2, room);
            ps.setString(3, time);
            ps.setString(4, code);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

}
