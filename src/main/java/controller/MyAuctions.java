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
import java.util.List;
import java.util.Set;

/**
 * Created by martin on 21.01.2017.
 */
@WebServlet("/myAuctions")
public class MyAuctions extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        String userEmail = (String) session.getAttribute("userEmail");
        System.out.println(userEmail);
        if (userEmail == null ) {
            resp.sendRedirect("/index");
            return;
        }
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        User user = hibSession.get(User.class, userEmail);
        List<Product> listProducts = hibSession.createQuery("from Product").list();
        Set<Product> products = user.getMyProducts();

        for (int i = 0; i < listProducts.size(); i++) {
            Product p = listProducts.get(i);
            if (!products.contains(p)) {
                listProducts.remove(p);
                i -= 1;
            }
        }

        hibSession.close();

        req.setAttribute("list", listProducts);

        req.getRequestDispatcher("myAuctions.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
