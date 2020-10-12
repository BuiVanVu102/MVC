/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author BuiVu
 */

public class DataProcess {
    public Connection getConnection()
    {
        Connection conn = null;
        try {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            String  user = "sa";
            String pass = "vuvanbuia18";
            String url =    "jdbc:sqlserver://127.0.0.1:1433;DatabaseName=Asm2Ad";
            try {
                conn=DriverManager.getConnection(url, user, pass);
            } catch (SQLException ex) {
                Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return conn;
    } 
       public boolean checkLogin(String user, String pass)
    {
        boolean f=false;
        String sql="SELECT * FROM tblAccount WHERE _user=? AND _pass=?";
        Connection conn=getConnection();
        try {
            PreparedStatement ps=conn.prepareStatement(sql);
            ps.setString(1, user);
            ps.setString(2, pass);
            ResultSet rs=ps.executeQuery();
            f=rs.next();
            rs.close();
            ps.close();
            conn.close();
        } catch (SQLException ex) {
            Logger.getLogger(DataProcess.class.getName()).log(Level.SEVERE, null, ex);
        }
        return f;
    }
}
