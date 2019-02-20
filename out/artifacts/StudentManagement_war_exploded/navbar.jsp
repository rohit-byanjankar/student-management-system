
<nav class="nav navbar-expand-md  bg-dark sticky-top">
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsing">
        <span class="text-success"><i class='fa fa-arrow-circle-down'></i></span>
    </button>
    <div class="navbar-brand ml-2" href="/"><img src="img/eclat1.png" height="35px" width="100%"></div>
    <div class="collapse navbar-collapse" id="collapsing">
        <div class=" dropdown">
            <a class="nav-link dropdown-toggle text-success " href="#" id="navbardrop" data-toggle="dropdown">
                Courses
            </a>
            <div class="dropdown-menu bg-dark">
                <a class="dropdown-item text-success nav-link" href="#">BSc.CSIT</a>
                <a class="dropdown-item text-success nav-link" href="#">BIM</a>
                <a class="dropdown-item text-success nav-link" href="#">BCA</a>
                <a class="dropdown-item text-success nav-link" href="#">BBS</a>
            </div>
        </div>
    </div>
    <%
        if(session.getAttribute("email")==null) { %>
            <a href="login" class="nav-link text-success">Log In</a>
        <% }
        else { %>
        <div class="dropdown float-right mt-1 mr-2">
             <a href="#" class="dropdown-toggle text-success nav-link" data-toggle="dropdown">
                <% out.print(session.getAttribute("email"));%>
             </a>
                <div class="dropdown-menu">
                     <a class="dropdown-item" href="studentdetail.jsp">Profile</a>
                     <a href="logout.jsp" class="dropdown-item nav-link">Log Out</a>
                 </div>
        </div>
       <% } %>
</nav>


