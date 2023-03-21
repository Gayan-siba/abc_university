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
import javax.servlet.http.HttpSession;

/**
 *
 * @author user
 */
@WebServlet(name = "loginController", urlPatterns = {"/loginController"})
public class loginController extends HttpServlet {

    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String uname = request.getParameter("uname");
        String pwd = request.getParameter("pwd");
       
        PrintWriter out = response.getWriter();
        Connection con;
        try {
            con = DatabaseConnection.connectToDatabase("jdbc:mysql://localhost/abc_university_a", "root","");
            pst = con.prepareStatement("SELECT * FROM users WHERE uname=? AND pwd=?");
        
            pst.setString(1, uname);
            pst.setString(2, pwd); 
            ResultSet rs = pst.executeQuery();
            if(rs.next()){
                HttpSession session = request.getSession();
                session.setAttribute("UN", uname);
                request.setAttribute("message","Hello " + uname);
                response.sendRedirect("home.jsp");
                
            }else{
                 request.setAttribute("Message", "Login Failed please check your username and password");
                 request.getRequestDispatcher("login.jsp").forward(request, response);
            }
            
            
         } catch (SQLException ex) {
            Logger.getLogger(RegisterController.class.getName()).log(Level.SEVERE, null, ex);
            out.println("<h1>Something Went Wrong!!!</h1>");
        }
//       // out.println("<h1>Sucess!!!</h1>");
       
    }

    

}
