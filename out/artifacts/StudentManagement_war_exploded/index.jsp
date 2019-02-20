<%--
  Created by IntelliJ IDEA.
  User: Red Skull
  Date: 12/2/2018
  Time: 1:22 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Home</title>
       <%@include file="header.jsp"%>
    </head>
    <style>

        /* The hero image */
        .hero-image {
            /* Use "linear-gradient" to add a darken background effect to the image (photographer.jpg).
            This will make the text easier to read */
            background-image: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)),url("img/student.jpg");

            /* Position and center the image to scale nicely on all screens */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
            position: relative;
            height: 92.79%;
            width: 100%;
        }

        /* Place text in the middle of the image */
        .hero-text {
            font-family: "Calibri Light";
            text-align: center;
            position: absolute;
            top: 50%;
            left: 50%;
            transform: translate(-50%, -50%);
            color: white;
        }
    </style>
<body>
<%@ include file="navbar.jsp"%>

<div class="hero-image img-fluid">
    <div class="hero-text">
        <h4>WELCOME!!</h4>
        <pre class="text-white">
        An investment in knowledge pays the best interest.
                                        -Benjamin Franklin
        </pre>
    </div>
</div>
</body>
</html>
