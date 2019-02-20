<%-- 
    Document   : delete
    Created on : Nov 25, 2018, 5:32:38 PM
    Author     : Red Skull
--%>
<%@page language="java" contentType="text/html"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    if(session.getAttribute("email")==null)
    {
        response.sendRedirect("login");
    }
%>
        <%@ page import="java.sql.*" %>
        <% 
           String roll=request.getParameter("roll");
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
           Statement s=con.createStatement();
           String sql="delete from practise where roll='"+roll+"' ";
           s.executeUpdate(sql);
           con.close();
           response.sendRedirect("showdata.jsp");
        %>
