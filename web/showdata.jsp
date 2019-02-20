<%-- 
    Document   : showdata
    Created on : Nov 22, 2018, 7:00:29 PM
    Author     : Red Skull
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View</title>
        <%@include file="header.jsp"%>
    </head>
    <body>
    <%
        if(session.getAttribute("email")==null)
        {
            response.sendRedirect("login");
        }
    %>
    <div class="nav bg-dark text-dark">
        <a href="addstudent" class="nav-link">Add New</a>
    </div>
        <h4 class="text-center bg-info mt-3">Record Of Students</h4>
        <div class="container mt-3 text-center">
        <table class="table-bordered table-responsive-md w-100 text-danger large">
            <tr>
                <th class="p-2">Roll No</th>
                <th>Name</th>
                <th>Age</th>
                <th>Phone</th>
                <th>Address</th>
                 <th>Action</th>
            </tr>
        <%@page import="java.sql.*" %>
        <% 
           Class.forName("com.mysql.jdbc.Driver");
           Connection con=DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
           Statement s=con.createStatement();
           String sql="select * from practise order by roll asc";
           ResultSet rs=s.executeQuery(sql);
           while(rs.next()){
           %>
           <tr>
            <td class="p-2"><%=rs.getString("roll")%></td>
            <td><%=rs.getString("Name")%></td>
            <td><%=rs.getString("Age")%></td>
            <td><%=rs.getString("Phone No")%></td>
            <td><%=rs.getString("Address")%></td>
            <td><a href="update?roll=<%=rs.getString("roll")%>"><i class="fa fa-edit"></i></a>&nbsp;&nbsp;<a href="delete?roll=<%=rs.getString("roll")%>"><i class="fa fa-trash"></i></a></td>
           </tr>
           <% }
           con.close();
        %>
        </table>
        </div>
    </body>
</html>
