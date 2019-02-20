<%--
  Created by IntelliJ IDEA.
  User: Red Skull
  Date: 12/5/2018
  Time: 1:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

</head>
<body>
    <%
        session.invalidate();
        response.sendRedirect("home");
    %>
</body>
</html>
