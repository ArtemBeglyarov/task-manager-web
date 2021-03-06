<%@ page import="com.taskmanager.operations.UsersOperations" %>
<%@ page import="com.taskmanager.BeansStore" %>
<%@ page import="com.taskmanager.entity.User" %>
<%@ page import="com.fasterxml.jackson.databind.ObjectMapper" %>
<%
    User currUser = (User) session.getAttribute("currUser");
    if (currUser == null) {
        response.sendRedirect("login.jsp");
    }
    UsersOperations usersOperations = (UsersOperations) BeansStore.getBean(UsersOperations.class);
    String checkID =request.getParameter("IDs");
    ObjectMapper mapper = new ObjectMapper();
    Long[] listID = mapper.readValue(checkID,Long[].class);
    for (Long k:listID){
        usersOperations.removeUserById(k);
    }
    response.sendRedirect("users.jsp");
%>