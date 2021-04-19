<%@ page import="com.taskmanager.entity.User" %>
<%@ page import="com.taskmanager.operations.UsersOperations" %>
<%@ page import="javax.ws.rs.HttpMethod" %>
<%@ page import="com.taskmanager.BeansStore" %>
<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
</head>
<body >
<h1 class="title" align=center >CREATE USER</h1>
<form action="createUser.jsp" method="POST">
    <p class="title" align=center>First name:
        <input type="text" name="firstName">
    <p class="title" align=center>Last name:
        <input type="text" name="secondName">
    <p class="title" align=center>User name:
        <input type="text" name="userName">
    <p class="title" align=center>Password:
        <input type="text" name="password">
    <p class="title" align=center>Status:
        <input type="text" name="status">
    <p class="title" align=center><input type="submit" value="Create">
</form>


<%!
    UsersOperations usersOperations = (UsersOperations) BeansStore.getBean(UsersOperations.class);
%>



<% if (request.getMethod().equals(HttpMethod.POST)) {
    User user = new User();
    user.setFirstName(request.getParameter("firstName"));
    user.setLastName(request.getParameter("secondName"));
    user.setUserName(request.getParameter("userName"));
    user.setPassword(request.getParameter("password"));
    user.setStatus(request.getParameter("status"));
    usersOperations.createUser(user);
//    response.sendRedirect("");
}

%>


</body>
</html>