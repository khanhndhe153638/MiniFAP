/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Curriculum;
import entity.Detail;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class DetailDAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public Detail getAllDetail(int userID) {
        String query = "select Detail.userID, Account.[user], Detail.fullname, Detail.[role], Detail.email\n"
                + "from Detail\n"
                + "inner join Account on Detail.userID = Account.userID\n"
                + "where Account.userID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setInt(1, userID);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Detail(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5));
            }
        } catch (Exception e) {
        }
        return null;
    }

    public void addNewStudentDetail() {
        String query = "insert into Detail\n"
                + "values((select MAX(userID) from Account), "
                + "(select [user] from Account where userID = (select MAX(userID) from Account)), "
                + "'student', "
                + "(select [user] from Account where userID = (select MAX(userID) from Account))+'@fpt.edu.vn')";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void addNewAdminDetail() {
        String query = "insert into Detail\n"
                + "values((select MAX(userID) from Account), "
                + "(select [user] from Account where userID = (select MAX(userID) from Account)), "
                + "'admin', "
                + "(select [user] from Account where userID = (select MAX(userID) from Account))+'@fpt.edu.vn')";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }

    public void updateDetail(String fullname, int id) {
        String query = "update Detail\n"
                + "set fullname = ?\n"
                + "where userID = ?";
        try {
            conn = new DBContext().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, fullname);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
}
