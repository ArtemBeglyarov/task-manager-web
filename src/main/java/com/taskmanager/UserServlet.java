package com.taskmanager;

import javax.inject.Inject;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/user")
public class UserServlet extends HttpServlet {

    @Inject
    UsersOperations usersOperations;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        String id =req.getParameter("id");
//        User user = usersOperations.findUser(id);
//        resp.getWriter().println("you ID" + " - " + user.getUserName()+" " + user.getFirstName());
        System.out.println(req.getMethod());
        System.out.println(req.getParameterMap());

    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

//        String firstName = req.getParameter("firstName");
//        String secondName = req.getParameter("secondName");
//        String userName = req.getParameter("userName");
//        String password = req.getParameter("password");
//        User user = new User(firstName, secondName, userName, password);
//        usersOperations.createUser(user);
//        resp.getWriter().println("you ID" + " - ");

    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.doPut(req, resp);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String id = req.getParameter("id");
        usersOperations.removeUserById(id);

    }
}
