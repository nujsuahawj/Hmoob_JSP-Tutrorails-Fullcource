/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package nuj;
import java.sql.*;

/**
 *
 * @author Acer
 */
public class Nas {

    private static Class<?> forName;
     public static Connection getConnect(){
         try {
             forName = Class.forName("com.mysql.jdbc.Driver");//laod driver ua ntej yuav siv
            String user="root";
            String pwd="";
            String url="jdbc:mysql://localhost/jsp";//khag mus rau hau yus lub db
            return DriverManager.getConnection(url, user, pwd);
        } catch (ClassNotFoundException | SQLException e) {
            return null;
        }
    }
    
}
