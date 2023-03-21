/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;


import Beans.DatabaseConnection;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author user
 */
@WebServlet(name = "RegisterController", urlPatterns = {"/RegisterController"})
public class RegisterController extends HttpServlet {
    
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");
        String address = request.getParameter("address"); 
        
        
        PrintWriter out = response.getWriter();
        Connection con;
        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_a", "root","");
            pst = con.prepareStatement("INSERT INTO users(fname, lname, uname, pwd, address) VALUES(?,?,?,?,?)");
        
            pst.setString(1, fname);
            pst.setString(2, lname);
            pst.setString(3, uname);
            pst.setString(4, pwd);
            pst.setString(5, address);
            pst.executeUpdate();
         } catch (SQLException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
            out.println("<h1>Something Went Wrong!!!</h1>");
        }
       // out.println("<h1>Sucess!!!</h1>");
        request.setAttribute("Message", "Hello " + fname + " your registration is successful. Now"
                + " you can login to the system");
        request.getRequestDispatcher("login.jsp").forward(request, response);
    }
    }



