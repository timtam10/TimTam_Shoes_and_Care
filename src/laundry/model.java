/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package laundry;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import javax.swing.JOptionPane;

/**
 *
 * @author LENOVO
 */
class model {
    
    Connection con = koneksi.koneksiDB.getkoneksi();
    Statement st;
    ResultSet rs;
    
    public Boolean simpan(String table,String field){
        try{
            st = con.createStatement();
            st.executeUpdate("INSERT INTO "+ table +" SET "+ field +"");
            return true;
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e.getMessage());
            return false;
        }
    }
    public Boolean hapus(String table,String where,String id){
        try{
            st = con.createStatement();
            st.executeUpdate("DELETE FROM "+ table +" WHERE "+ where +"='"+id+"' ");
            return true;
        }
        catch(Exception e){
            JOptionPane.showMessageDialog(null, e.getMessage());
            return false;
        }
    }
    
}
