/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;
import java.io.IOException;

import java.sql.DriverManager;
import java.sql.SQLException;
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
public class RegisterStudentServlet extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/addstudent.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String roll=request.getParameter("roll");
            String name=request.getParameter("name");
            String a=request.getParameter("age");
            int age=Integer.parseInt(a);
            String phone=request.getParameter("no");
            String address=request.getParameter("add");
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(RegisterStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            try (Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost/test","root","")) {
                String sql="insert into practise(roll,Name,Age,`Phone No`,Address) values(?,?,?,?,?)";
                PreparedStatement ps=(PreparedStatement) con.prepareStatement(sql);
                ps.setString(1, roll);
                ps.setString(2, name);
                ps.setInt(3, age);
                ps.setString(4, phone);
                ps.setString(5, address);
                ps.executeUpdate();
            }
            response.sendRedirect("show");
            
        } catch (SQLException ex) {
            Logger.getLogger(RegisterStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
   
    }


}
