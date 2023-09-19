package com.example.manhltw;
import java.io.*;
import javax.servlet.*;
import javax.servlet.http.*;

public class SurveyServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        request.setCharacterEncoding("UTF-8");
        response.setCharacterEncoding("UTF-8");
        String url= "/index.jsp";
        String action = request.getParameter("action");
        if (action == null) {
            action = "join"; // default action
        }
        if (action.equals("join")) {
            url = "/index.html"; // the "join" page
        }
        else if (action.equals("add")) {
            String firstName = request.getParameter ("firstName");
            String lastName = request.getParameter("lastName");
            String email = request.getParameter ("email");
            User user = new User (firstName, lastName, email);
            String checkboxValue = request.getParameter("checkboxlike");
            //UserDB.insert (user);
            // set User object in request object and set URL
            request.setAttribute("user", user);
            if (checkboxValue != null) {
                checkboxValue = "Yes";
            } else {
                checkboxValue = "No";
            }
            request.setAttribute("checkboxValue", checkboxValue);
            url = "/thanks.jsp"; // the "detail" page
        }

        // forward request and response objects to specified URL
        getServletContext()
                .getRequestDispatcher(url)
                .forward(request, response);
    }
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        doPost(request, response);
    }
}