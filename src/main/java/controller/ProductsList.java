package controller;

import model.entitys.Product;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

/**
 * Created by y.baidiuk on 07/12/2016.
 */
@WebServlet("/productsList")
public class ProductsList extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        String suchWort = req.getParameter("suchWort");
//        System.out.println("list GET  " + suchWort);
        if (suchWort == null) suchWort = "";
        List<Product> list = Search.searchProducts(suchWort);
        req.setAttribute("list", list);


        req.getRequestDispatcher("productsList.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//      da noch probleme after 2 serch;
        String suchWort = req.getParameter("suchWort");
//        System.out.println("list post  " + suchWort);
        if (suchWort == null) suchWort = "";
        List<Product> list = Search.searchProducts(suchWort);
        req.setAttribute("list", list);
        req.getRequestDispatcher("productsList.jsp").forward(req, resp);
    }
}
