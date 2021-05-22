/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Interfac;
import java.sql.*;

// github.com/pbounmy

/**
 *
 * @author Acer
 */
public interface Facterin {
    public ResultSet selectByValue() throws Exception;
    public ResultSet selectAllData() throws Exception;
    public int  InsertData() throws Exception;
    public int UpdateData() throws Exception;
    public int DeleteData() throws Exception;
    
}
