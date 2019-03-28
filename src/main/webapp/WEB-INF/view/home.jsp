<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>


<html>

<head>
    <title>Company Home Page</title>
</head>

<body>
<h2>Company Home Page</h2>
<hr>
<p>
    Welcome to the Company Home Page
</p>
<hr>
<!-- display user name and role -->
<p>
    User: <security:authentication property="principal.username"/>
    <br><br>
    Role(s): <security:authentication property="principal.authorities"/>
</p>

<hr>
<!-- Add a link to point to leaders -->
<p>
    <a href="${pageContext.request.contextPath}/leaders">LeaderShip Meating</a>
    (Only for manager peeps)
</p>
<hr>
<p>
    <a href="${pageContext.request.contextPath}/systems">Admin Meating</a>
    (Only for admin peeps)
</p>

<hr>

<form:form action="${pageContext.request.contextPath}/logout"
           method="post">
    <input type="submit" value="Logout"/>
</form:form>
</body>


</html>