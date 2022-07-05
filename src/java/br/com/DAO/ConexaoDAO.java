/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package br.com.DAO;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


/**
 *
 * @author Denise
 */
public class ConexaoDAO {
     public Connection conexaoBD() throws ClassNotFoundException
             {
                 Class.forName("com.mysql.jdbc.Driver");
                 Connection con =null;
                 try {
                     String url;
                     url = "jdbc:mysql://localhost:3306/portobd?user=root&password=";
                     con = DriverManager.getConnection(url);
                 } catch (SQLException e) {
                     System.out.print("deu erro");
                 }
                 return con;
             }
             
    
}
