<%--
  Created by IntelliJ IDEA.
  User: Red Skull
  Date: 12/8/2018
  Time: 9:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
    <%
        if(session.getAttribute("adminemail")==null)
        {
            response.sendRedirect("home");
        }
    %>
        <h1>WELCOME</h1>
</body>
</html>
