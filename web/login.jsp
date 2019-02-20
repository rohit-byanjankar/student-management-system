<html>
    <head>
        <title>Login</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <%@include file="header.jsp"%>
        <script>
            $( function() {
                $( "#tabs" ).tabs();
            } );
        </script>
    </head>
    <body>
    <%
        if(session.getAttribute("email")!=null)
        {
            response.sendRedirect("home");
        }
    %>
    <div class="card mt-5" id="tabs" style="margin:auto; width:290px;">
        <ul class="d-flex justify-content-center nav nav-tabs">
          <li class="nav-item"><a href="#tabs-1" class="nav-link mt-1">Log In</a></li>
           <li class="nav-item"><a href="#tabs-2" class="nav-link mt-1">Sign Up</a></li>
        </ul>
         <div id="tabs-1">
           <form class="card-body" method="POST" action='login'>
             <div class="mt-4">
               <label for="email">Email:</label>
               <input type="email" class="form-control" placeholder="Email" name="email" required>
             </div>

             <div class="mt-4">
               <label for="password">Password:</label>
               <input type="password" class="form-control" placeholder="Password" name="password" required>
             </div>

             <div class="d-flex justify-content-center mt-4">
               <button type="submit" class="btn btn-success mt-2">Log in</button>
             </div>
           </form>
         </div>

     <div id="tabs-2">
        <form class="card-body" action='signup'  method="post">
            <div class="mt-2">
                <label for="name">Name:</label>
                <input type="text" class="form-control" name="name" placeholder="Name" required>
            </div>

            <div class="mt-2">
                <label for="email">Email:</label>
                <input type="email" class="form-control" name="email" placeholder="Email" required>
            </div>

            <div class="mt-2">
                <label for="password">Password:</label>
                <input type="password" class="form-control" name = "password" id="psw" placeholder="Password" required>
            </div>

            <div class="mt-2">
                <label for="cpsw">Confirm Password:</label>
                <input type="password" class="form-control" name="cpsw" id="cpsw" placeholder="Confirm Password" required>
            </div>

            <div class="d-flex justify-content-center mt-3">
                <button type="submit" class="btn btn-success">Sign up</button>
            </div>
        </form>
      </div>
    </div>
</body>
</html>

