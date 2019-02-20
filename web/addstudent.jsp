
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
    <head>
        <title>FORM</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css"/>
    </head>
    <body>
    <%
        if(session.getAttribute("email")==null)
        {
            response.sendRedirect("login");
        }
    %>
        <div class="nav bg-dark text-dark">
          <a href="#" class="nav-link">Add New</a>
          <a href="show" class="nav-link">View Students</a>
       </div>
        <h4 class="text-center text-danger mt-1">REGISTER</h4>
        <div class="container mt-2 w-50">
        <form action="register" method="post" class="text-success">
            <div class="form-group ">
              <label for="roll">Roll No:</label>
              <input type="text" class="form-control" name="roll">
            </div>
            
            <div class="form-group">
              <label for="name">Name:</label>
              <input type="text" class="form-control" name="name">
            </div>
            
             <div class="form-group">
              <label for="age">Age:</label>
              <input type="number" class="form-control" name="age">
            </div>

            <div class="form-group">
                <label for="no">Phone No:</label>
                <input type="text" class="form-control" name="no">
            </div>
            
            <div class="form-group">
              <label for="add">Address:</label>
              <input type="text" class="form-control" name="add">
            </div>
            <div class="text-center">
            <button class="btn btn-success">Register</button>
            </div>
        </form>
        </div>
    </body>
</html>
