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
 * Created by marti on 11.01.2017.
 */
@WebServlet("/watchlist")
public class Watchlist extends HttpServlet {


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
        Set<Integer> watchList = user.getMyWatchList();

        for (int i = 0; i < listProducts.size(); i++) {
            Product p = listProducts.get(i);
            if (!watchList.contains(p.getProductId())) {
                listProducts.remove(p);
                i -= 1;
            }
        }

        hibSession.close();
        req.setAttribute("list", listProducts);
        req.getRequestDispatcher("productsList.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}

