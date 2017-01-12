package controller;

import model.entitys.User;
import model.managers.HibernateUtil;
import org.hibernate.Session;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by y.baidiuk on 19/11/2016.
 */
@WebServlet("/userAdd")
public class UserAdd extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        req.getRequestDispatcher("userAdd.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String firstName = req.getParameter("firstName");
        String lastName = req.getParameter("lastName");
        String email = req.getParameter("email");
        String password = req.getParameter("password");
        String birthDate = req.getParameter("birthDate");
        String country = req.getParameter("country");
        String adresse = req.getParameter("adresse");
        String gender = req.getParameter("gender");



        User newCustomer = new User(firstName, lastName, email, password, birthDate, country,adresse,
                gender);

        Session hibSesion = HibernateUtil.getSessionFactory().openSession();
        hibSesion.beginTransaction();
        hibSesion.save(newCustomer);
        hibSesion.getTransaction().commit();
        hibSesion.close();
        resp.sendRedirect("signin");
    }
}
