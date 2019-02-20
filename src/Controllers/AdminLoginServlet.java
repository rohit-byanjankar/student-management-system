package Controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet(name = "AdminLoginServlet")
public class AdminLoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String adminemail=request.getParameter("email");
        String password=request.getParameter("password");
        try{
            Class.forName("com.mysql.jdbc.Driver");
            Connection con= DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
            Statement state=con.createStatement();
            String sql="select * from admins where Username='"+adminemail+"' and Password='"+password+"'";
            ResultSet rs= state.executeQuery(sql);
            rs.next();
            if(rs.getRow()!= 0){
                HttpSession session=request.getSession();
                session.setAttribute("email",adminemail);
                response.sendRedirect("adminpanel.jsp");
            }else{
                response.sendRedirect("adminlogin");
            }
        }catch (Exception e){
                e.printStackTrace();
        }
    //response.sendRedirect("adminpanel.jsp");
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
            getServletContext().getRequestDispatcher("/adminlogin.jsp").forward(request,response);
    }
}
