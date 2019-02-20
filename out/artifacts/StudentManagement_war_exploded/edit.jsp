<%-- 
    Document   : edit
    Created on : Nov 25, 2018, 8:04:30 PM
    Author     : Red Skull
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%@ page import="java.sql.*" %>
        <% 
           String name=request.getParameter("name");
            String age=request.getParameter("age");
             String address=request.getParameter("add");
             String phone=request.getParameter("no");
           String roll=request.getParameter("roll");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
           Statement s=con.createStatement();
           String sql="update practise SET Name='"+name+"',Age='"+age+"',Address='"+address+"',`Phone No`='"+phone+"' where roll="+roll+" ";
           System.out.println(sql);
           s.executeUpdate(sql);
           con.close();
           response.sendRedirect("showdata.jsp");
        %>
