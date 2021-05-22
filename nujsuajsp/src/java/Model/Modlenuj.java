/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import Interfac.Facterin;
import java.sql.*;

/**
 *
 * @author Acer
 */
public class Modlenuj implements Facterin {
    private String name;
    private String email;
    private String password;
    private String tim;
    Connection c;

    public Modlenuj(Connection c) {
        this.c = c;
    }
    
    

    public void setName(String name) {
        this.name = name;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setTim(String tim) {
        this.tim = tim;
    }

    @Override
    public ResultSet selectByValue() throws Exception {
        String sql="select from customer where password='' ";
        ResultSet rs=c.createStatement().executeQuery(sql);
        return rs;
    }

    @Override
    public ResultSet selectAllData() throws Exception {
        String sql="select * from customer";
        ResultSet rs=c.createStatement().executeQuery(sql);
        return rs;
    }

    @Override
    public int InsertData() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); 
    }

    @Override
    public int UpdateData() throws Exception {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int DeleteData() throws Exception {
        
        throw new UnsupportedOperationException("Not supported yet."); 
        
    }
    
    
    
}
