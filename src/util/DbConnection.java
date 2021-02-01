/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author didan
 */
public class DbConnection {
    static Connection connection;
    private static final String DB_NAME = "nb_gajikaryawan"; // nama Database
    private static final String DB_URL = "jdbc:mysql://localhost:3306/"+DB_NAME+"?useTimezone=true&serverTimezone=UTC";
    private static final String DB_USER = "root"; //username MYSQL
    private static final String DB_PASSWORD = ""; //password MYSQL
    public static Connection getConnection() throws ClassNotFoundException {
        try {
            //Membuat Koneksi dengan config DB diatas
            Class.forName("com.mysql.jdbc.Driver");
            connection = DriverManager.getConnection(DB_URL,DB_USER,DB_PASSWORD);
        } catch (SQLException ex) {
            Logger.getLogger(DbConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        return connection;
    }
}
