/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.sql.Connection;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author TRAINING
 */
public class Koneksi {

    Connection conn = null;
    public Statement stmt = null;
    ResultSet rs;

    public Koneksi() throws ClassNotFoundException {
        String dbName = "db_kampus";
        String uName = "root";
        String pass = "";
        String URL = "jdbc:mysql://localhost/" + dbName;
        Class.forName("com.mysql.jdbc.Driver");
        try {
            conn = DriverManager.getConnection(URL, uName, pass);
            stmt = conn.createStatement();
        } catch (SQLException e) {
            Logger.getLogger(Koneksi.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
    //overloading
    public Koneksi(String dbName, String uName, String pass) throws ClassNotFoundException{
        String URL = "jdbc:mysql://localhost/" + dbName;
        Class.forName("com.mysql.jdbc.Driver");
        try {
            conn = DriverManager.getConnection(URL, uName, pass);
            stmt = conn.createStatement();
        } catch (SQLException e) {
            Logger.getLogger(Koneksi.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
    public void close() throws SQLException{
        conn.close();
        stmt.close();
    }
    
}
