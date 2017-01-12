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
 * Created by y.baidiuk on 28/11/2016.
 */
@WebServlet("/userEdit")
public class UserEdit extends HttpServlet {

    private User user = null;
    private Session hibSession;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession();
        String userEmail = (String) session.getAttribute("userEmail");
        if (userEmail != null) {
            hibSession = HibernateUtil.getSessionFactory().openSession();
            hibSession.beginTransaction();
            user = hibSession.get(User.class, userEmail);
            hibSession.close();
            System.out.println("1 " + user);

            req.setAttribute("firstName", user.getFirstName());
            req.setAttribute("lastName", user.getLastName());
            req.setAttribute("email", user.getEmail());
            req.setAttribute("password", user.getPassword());
            req.setAttribute("dateOfBirth", user.getDateOfBirth());
            req.setAttribute("country", user.getCountry());
            req.setAttribute("adresse", user.getAdresse());
        } else {
            resp.sendRedirect("index");
            return;
        }
        req.getRequestDispatcher("userEdit.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String firstName = req.getParameter("firstName");
        user.setFirstName(firstName);

        String lastName = req.getParameter("lastName");
        user.setLastName(lastName);

        String password = req.getParameter("password");
        user.setPassword(password);

        String birthDate = req.getParameter("birthDate");
        user.setDateOfBirth(birthDate);

        String country = req.getParameter("country");
        user.setCountry(country);

        String adresse = req.getParameter("adresse");
        user.setAdresse(adresse);


        HttpSession session = req.getSession();
        session.setAttribute("firstName", user.getFirstName());
        hibSession = HibernateUtil.getSessionFactory().openSession();
        hibSession.beginTransaction();
        hibSession.update(user);
        hibSession.getTransaction().commit();
        hibSession.close();
        resp.sendRedirect("index");
    }
}
