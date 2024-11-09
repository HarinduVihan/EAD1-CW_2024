/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 */

package com.mycompany.eadcw;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author Harindu
 */
public class EADCW {
    
    public static Connection conn()
    {
        try
        {
            //creating the connection
            
            String url = "jdbc:mysql://localhost:3307/eadcwdb";
            String user = "Harindu";
            String password = "123";
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(url,user,password);
            return conn;
        }
        catch(SQLException|ClassNotFoundException e)
        {
            JOptionPane.showMessageDialog(null,e);
        }
        return null;
    }

    public static void main(String[] args) {
      //creating objects for interface that we need to start up first
        Userlogin F1 = new Userlogin();      
        F1.show();
        
        Menu M1 = new Menu();
        //M1.show();
        
        userMenu Um1 = new userMenu();
        //Um1.show();
    }
}
