<%-- 
    Document   : update.jsp
    Created on : Nov 26, 2018, 11:13:13 AM
    Author     : Red Skull
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    </head>
    <body>
    <%
        if(session.getAttribute("email")==null)
        {
            response.sendRedirect("login");
        }
    %>
        <%@page import="java.sql.*" %>
       <%
        String rollno=(String)request.getAttribute("rollno");
       String name=(String)request.getAttribute("name");
       String age=(String)request.getAttribute("age");
       String phone=(String)request.getAttribute("phone");
       String add=(String)request.getAttribute("add");
            %>
        <h4 class="text-center text-danger mt-1">REGISTER</h4>
        <div class="container mt-2 w-50">
        <form action="update" method="post" class="text-success">

            <input type="text" class="form-control" hidden name="roll" value="<%=rollno %>">
            
            <div class="form-group ">
              <label for="roll">Roll No:</label>
              <input type="text" class="form-control" disabled value="<%=rollno%>">
            </div>
            
            <div class="form-group">
              <label for="name">Name:</label>
              <input type="text" class="form-control" name="name" value="<%=name%>">
            </div>
            
             <div class="form-group">
              <label for="age">Age:</label>
              <input type="text" class="form-control" name="age" value="<%=age%>">
            </div>
            
            <div class="form-group">
              <label for="no">Phone No:</label>
              <input type="text" class="form-control" name="no" value="<%=phone%>">
            </div>
            
            <div class="form-group">
              <label for="add">Address:</label>
              <input type="text" class="form-control" name="add" value="<%=add%>">
            </div>

            <button class="btn btn-success">Update</button>
        </form>
        </div>
    </body>
</html>


