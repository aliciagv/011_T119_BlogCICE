/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.cice.blogcice.servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author cice
 */
public class Login extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        //1º Recuperamos los datos del formulario
        
        String user =req.getParameter("user");
        String pass =req.getParameter("pass");
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection connection= DriverManager.getConnection("jdbc:mysql://localhost:8889/blogcice", "root", "root");
            Statement st =connection.createStatement();
            ResultSet busqueda=st.executeQuery("select * from usuarios where user ='"+user +"'  AND pass='"+pass+"'");
            if (busqueda.first()) {
                //existe usuario en la BBDD, hacemos login
                resp.sendRedirect("./admin/panelprincipal.jsp");
            }
            else {
                
                resp.sendRedirect("./admin/index.jsp?error");
            }
            busqueda.close();
            st.close();
            connection.close();
         /*   DBPoolManager dbPoolManager= new DBPoolManager */
            
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        } catch (SQLException ex) {
            Logger.getLogger(Login.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        
        
        
    }

}
