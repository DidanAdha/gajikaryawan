/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Karyawan;

/**
 *
 * @author didan
 */
public class DbQuery {
    public static List<Karyawan> getKaryawan() throws SQLException, ClassNotFoundException{
        Connection connection = DbConnection.getConnection();
        List<Karyawan> karyawans = new ArrayList<>();
        ResultSet resultSet = connection.createStatement().executeQuery("SELECT * FROM users");
        while(resultSet.next()){
            Karyawan k = new Karyawan();
            k.setNama(resultSet.getString("name"));
            k.setJabatan(resultSet.getInt("jabatan"));
            k.setGaji(resultSet.getInt("gaji"));
            k.setId(resultSet.getInt("id"));
            karyawans.add(k);
        }
        return karyawans;
    }
    public static List<Karyawan> searchKaryawan(String query) throws SQLException, ClassNotFoundException{
        Connection connection = DbConnection.getConnection();
        List<Karyawan> karyawans = new ArrayList<>();
        System.out.println("SELECT * FROM users"
                + " WHERE name LIKE '%"+query.toLowerCase()+"%'");
        ResultSet resultSet = connection.createStatement().executeQuery("SELECT * FROM users"
                + " WHERE name LIKE '%"+query.toLowerCase()+"%'");
        
        while(resultSet.next()){
            Karyawan k = new Karyawan();
            k.setNama(resultSet.getString("name"));
            k.setJabatan(resultSet.getInt("jabatan"));
            k.setGaji(resultSet.getInt("gaji"));
            k.setId(resultSet.getInt("id"));
            karyawans.add(k);
        }
        return karyawans;
    }
    public static void insertKaryawan(Karyawan karyawan) throws ClassNotFoundException, SQLException{
        Connection connection = DbConnection.getConnection();
        connection.createStatement().execute("INSERT INTO `users` (`id`, `name`, `jabatan`, `gaji`, "
                + "`created_at`, `updated_at`) VALUES (NULL, '"+karyawan.getNama()+"', '"+karyawan.getJabatan()+"', "
                + "'"+karyawan.getGaji()+"', NULL, NULL);");
    }
}
