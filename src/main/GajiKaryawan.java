/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package main;

import java.sql.SQLException;
import ui.ListKaryawan;

/**
 *
 * @author didan
 */
public class GajiKaryawan {

    /**
     * @param args the command line arguments
     * @throws java.sql.SQLException
     */
    public static void main(String[] args) throws SQLException {
        new ListKaryawan().setVisible(true);
    }
}
