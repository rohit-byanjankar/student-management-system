<html>
<head>
    <%@include file="header.jsp"%>
    <link rel="stylesheet" href="css/adminpanel.css">
</head>
<body id="LoginForm">
<%--<%
    if(session.getAttribute("adminemail")!=null)
    {
        response.sendRedirect("adminlogin");
    }
%>--%>
<div class="container">
    <div class="login-form">
        <div class="main-div">
            <div class="panel">
                <h2>Admin Login</h2>
                <p>Please enter your email and password</p>
            </div>
            <form action="adminlogin" id="Login" method="post">
                <div class="form-group">
                    <input type="email" class="form-control" id="inputEmail" placeholder="Email Address" name="email">
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" id="inputPassword" placeholder="Password" name="password">
                </div>
                <button type="submit" class="btn btn-primary">Login</button>

            </form>
        </div>
    </div>
</div>
</body>
</html>
