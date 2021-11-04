/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author ADMIN
 */
public class DeleteDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public void deleteSubjectCode(String sid, String sname) {
        String query = "delete from Schedule\n"
                + "where subjectCode = ? and subjectName = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, sid);
            ps.setString(2, sname);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
