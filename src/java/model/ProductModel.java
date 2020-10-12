/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import entity.Product;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author BuiVu
 */
public class ProductModel {
    public boolean addProduct(String id, String name, float price){
        int result=0;
        String sql ="INSERT INTO tblProduct  VALUES(?,?,?)";
        try {
            PreparedStatement ps = ConnectionFactory.getConnection().prepareStatement(sql);
            ps.setString(1, id);
            ps.setString(2, name);
            ps.setFloat(3, price);
            result=ps.executeUpdate();
            ps.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return result>0;
    }
    public ArrayList<Product>  getData()
    {
        ArrayList<Product>  list = new ArrayList<Product>();
        String sql="SELECT * FROM tblProduct";
        try {
            Statement st = ConnectionFactory.getConnection().createStatement();
            ResultSet rs = st.executeQuery(sql);
            while(rs.next())
            {
                Product p = new Product();
                p.setId(rs.getString(1));
                p.setName(rs.getString(2));
                p.setPrice(rs.getFloat(3));
                list.add(p);
            }
            rs.close();
        } catch (SQLException ex) {
            Logger.getLogger(ProductModel.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
}
