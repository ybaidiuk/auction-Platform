package controller;

import model.entitys.User;
import model.managers.HibernateUtil;
import org.hibernate.Session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Created by y.baidiuk on 18/11/2016.
 */
@WebServlet("/signin")
public class Signin extends HttpServlet {
    private boolean logAndPasIncorrect = false;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("logAndPasIncorrect", logAndPasIncorrect);
        req.getRequestDispatcher("signin.jsp").forward(req, resp);
    }


    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String inputEmail = req.getParameter("inputEmail");
        String inputPassword = req.getParameter("inputPassword");
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        User user = hibSession.get(User.class, inputEmail);
        hibSession.close();

        if (user != null && inputPassword.equals(user.getPassword())) {
            System.out.println("Sign in ist gut gegangen !");
            HttpSession session = req.getSession();
            session.setAttribute("firstName", user.getFirstName());
            session.setAttribute("userEmail", user.getEmail());
            session.setAttribute("geloged", true);
            logAndPasIncorrect = false;
            if(user.getEmail().equals("res@res")){
                resp.sendRedirect("researcher");
            }else if(user.getEmail().equals("admin@admin")) {
                resp.sendRedirect("admin");
            } else {
                resp.sendRedirect("index");
            }

        } else {
            System.out.println("3");
            logAndPasIncorrect = true;
            resp.sendRedirect("/signin");
        }
    }

}
