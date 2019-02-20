
package Controllers;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import static java.sql.DriverManager.getConnection;

public class UserSigninServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        getServletContext().getRequestDispatcher("/login.jsp").forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

                String email=request.getParameter("email");
                String password=request.getParameter("password");
        try {
            Class.forName("com.mysql.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }
        Connection con= null;
        try {
            con = getConnection("jdbc:mysql://localhost/test","root","");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        Statement s= null;
        try {
            s = con.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        String sql="select * from user where email='"+email+"' and password='"+password+"' ";
        ResultSet rs= null;
        try {
            rs = s.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            rs.next();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        try {
            if(rs.getRow()!= 0){
                        HttpSession session=request.getSession();
                        session.setAttribute("email",email);
                      response.sendRedirect("home");
                    }else{
                      response.sendRedirect("login");
                    }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
}