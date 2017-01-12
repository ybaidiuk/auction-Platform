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

/**
 * Created by martin on 11.01.2017.
 */
@WebServlet ("/researcher")
public class Researcher extends HttpServlet {
    private boolean emailIsInvalid = false;
    private int sold = 0;
    private int rest = 0;
    private int total = 0;
    private int totalUser = 0;

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
        if (!email.equals("res@res")) {
            resp.sendRedirect("/index");
            return;
        }

        req.setAttribute("emailIsInvalid", emailIsInvalid);


        emailIsInvalid = false;


        Session hibSession = HibernateUtil.getSessionFactory().openSession();hibSession.beginTransaction();
        List<Product> listProducts = hibSession.createQuery("from Product").list();
        List<User> listUser = hibSession.createQuery("from User").list();
        hibSession.close();
        total = listProducts.size();
        for (int i = 0; i < listProducts.size(); i++){
            if(listProducts.get(i).isSold()){
                sold += 1;
            }else{
                rest += 1;
            }
        }

        totalUser = listUser.size();

        req.setAttribute("totalUser",totalUser);
        req.setAttribute("total", total);
        req.setAttribute("sold", sold);
        req.setAttribute("rest", rest);

        System.out.println("User: " + totalUser);
        System.out.println("Total: " + total);
        System.out.println("Sold: " + sold);
        System.out.println("Rest: " + rest);

        totalUser = 0;
        total = 0;
        sold = 0;
        rest = 0;

        req.getRequestDispatcher("researcher.jsp").forward(req, resp);
    }






    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("Hello im in doPost Resers");
        }
}
