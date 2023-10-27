package controller;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "LoginController", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String email = req.getParameter("email");
        String pass = req.getParameter("pass");
        if (email.equals("xxx@gmail.com") && pass.equals("123")) {
            req.getRequestDispatcher("contact_us.jsp").forward(req,resp);
        } else if (email == null && pass == null) {
            req.setAttribute("error", "");
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        } else {
            req.setAttribute("error", "Email or Password not correct");
            req.getRequestDispatcher("login.jsp").forward(req,resp);
        }
    }
}
