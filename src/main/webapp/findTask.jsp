<%@ page import="com.taskmanager.operations.UsersOperations" %>
<%@ page import="com.taskmanager.BeansStore" %>
<%@ page import="com.taskmanager.entity.User" %>
<%@ page import="com.taskmanager.entity.Task" %>
<%
    User currUser = (User) session.getAttribute("currUser");
    if (currUser == null) {
        response.sendRedirect("login.jsp");
    }
%>
<!DOCTYPE HTML>
<html>

<head>
    <jsp:include page='header.jsp'/>
</head>

<body style="background-image: url(css/images/background.jpg);">
<h1 class="title" align=center>FIND TASK</h1>
<form action="findTask.jsp" method="GET">
    <p class="title" align=center>Enter the id of the taskEntity you want to find:
    <p align=center><input type="text" name="id">
    <p class="title" align=center><input type="submit" value="Find">
</form>

<%!
    UsersOperations usersOperations = (UsersOperations) BeansStore.getBean(UsersOperations.class);
%>
<%
    String ID = request.getParameter("id");
    if (ID != null) {
        Long id = Long.parseLong(ID);
        Task taskEntity = ;
        System.out.println(userEntity.getFirstName());
    }
%>
</body>
</html>
