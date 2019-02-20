/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controllers;

import java.io.IOException;
import java.io.PrintWriter;
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
 * @author Red Skull
 */
public class UpdateStudentServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String rollno="",name="",add="",phone="";
            int age=0;
        try {
            
            try {
                Class.forName("com.mysql.jdbc.Driver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(UpdateStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
            Statement s=con.createStatement();
            String roll=request.getParameter("roll");
            String sql="select * from practise where roll='"+roll+"' ";
            ResultSet rs=s.executeQuery(sql);
            while(rs.next()){
                rollno=rs.getString("roll");
                name=rs.getString("Name");
                age=rs.getInt("Age");
                add=rs.getString("Address");
                phone=rs.getString("Phone No");
            }
            
        } catch (SQLException ex) {
            Logger.getLogger(UpdateStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
        String a =Integer.toString(age);
        
        request.setAttribute("rollno", rollno);
        request.setAttribute("name", name);
        request.setAttribute("age",a);
        request.setAttribute("phone", phone);
        request.setAttribute("add", add);
        getServletContext().getRequestDispatcher("/update.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            String name=request.getParameter("name");
            String age=request.getParameter("age");
            String address=request.getParameter("add");
            String phone=request.getParameter("no");
            String roll=request.getParameter("roll");
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = null;
            try {
                con = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
            } catch (SQLException ex) {
                Logger.getLogger(UpdateStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            Statement s = null;
            try {
                s = con.createStatement();
            } catch (SQLException ex) {
                Logger.getLogger(UpdateStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
            String sql="update practise SET Name='"+name+"',Age='"+age+"',Address='"+address+"',`Phone No`='"+phone+"' where roll="+roll+" ";
            System.out.println(sql);
            int executeUpdate = s.executeUpdate(sql);
            con.close();
            response.sendRedirect("show");
        } catch (ClassNotFoundException | SQLException ex) {
            Logger.getLogger(UpdateStudentServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

}
