/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import java.io.IOException;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Red Skull
 */
public class DeleteStudentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
              try {
            String roll=request.getParameter("roll");
            Class.forName("com.mysql.jdbc.Driver");
            try (Connection con = DriverManager.getConnection("jdbc:mysql://localhost/test","root","")) {
                Statement s=con.createStatement();
                String sql="delete from practise where roll='"+roll+"' ";
                s.executeUpdate(sql);
            }
            response.sendRedirect("show");
        } catch (SQLException | ClassNotFoundException ex) {
            Logger.getLogger(DeleteStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
  
}
}
