package controller;

import model.entitys.Product;
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
 * Created by oksana on 12/21/16.
 */
@WebServlet("/admin")
public class Admin extends HttpServlet {
    private boolean emailIsInvalid = false;
    private boolean prodIdIsInvalid = false;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);


        System.out.println("do get:");

        if (session.getAttribute("userEmail")== null) {
            System.out.println("1.if");
            resp.sendRedirect("/signin");
            return;
        }
        String email = (String) session.getAttribute("userEmail");
        if (!email.equals("admin@admin")) {
            resp.sendRedirect("/index");
            return;
        }

        req.setAttribute("emailIsInvalid", emailIsInvalid);
        req.setAttribute("prodIdIsInvalid", prodIdIsInvalid);


        emailIsInvalid = false;
        prodIdIsInvalid = false;
        req.getRequestDispatcher("admin.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        hibSession.beginTransaction();

        String inputEmail = req.getParameter("inputEmail");
        System.out.println("DelImeil " + inputEmail);
        System.out.println("user geloescht");
        if (inputEmail != null) {
            User user;
            user = hibSession.get(User.class, inputEmail);
            if (user != null) {
                hibSession.delete(user);
            } else
                emailIsInvalid = true;
        }


        String productId = (req.getParameter("productId"));
        System.out.println("delId " + productId);
        if (productId != null) {
            System.out.println("2");
            Product product = hibSession.get(Product.class, Integer.parseInt(productId));
            if (product != null) {
                hibSession.delete(product);
            } else
                prodIdIsInvalid = true;
        }

        hibSession.getTransaction().commit();
        hibSession.close();
        resp.sendRedirect("/admin");
    }
}