/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package koneksi;

import com.mysql.cj.jdbc.Driver;
import java.sql.DriverManager;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author LENOVO
 */
public class koneksiDB {
    private static Connection con;
    
    public static Connection getkoneksi(){
        if (con==null){
            try{
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root", "");
                System.out.println("Berhasil");
            } catch (Exception e){
                e.getStackTrace();
            }
        }
        return con;
    }

    public static class con {

        public con() {
        }
    }
}
