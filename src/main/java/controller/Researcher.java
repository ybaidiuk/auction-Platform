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
import java.text.DecimalFormat;
import java.util.ArrayList;
import java.util.Collections;
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
    private double highestAuctionPrice = 0;
    private double highestInstantPrice = 0;
    private double lowestInstantPrice = 0;
    private double averrageInstantPrice = 0;
    private int amountInstantPrice = 0;
    private int minDuration = 0;
    private int maxDuration = 0;
    private double avDuration = 0;
    private double minStart = 0;
    private double maxStart = 0;
    private double avStart = 0;
    private List <Double> startList = new ArrayList<Double>();


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
        int y = 0;
        while(lowestInstantPrice == 0){
            lowestInstantPrice = listProducts.get(y).getSofortKaufPrice();
            y++;
        }
        y = 0;
        while (minDuration == 0){
            minDuration = listProducts.get(y).getDurationAuction();
            y++;
        }
        y = 0;
        while (minStart == 0){
            minStart = listProducts.get(y).getStartPrice();
            y++;
        }
        y = 0;
        for (int x = 0; x < listProducts.size();x++){
            if (maxDuration < listProducts.get(x).getDurationAuction()){
                maxDuration = listProducts.get(x).getDurationAuction();
            }
            if(minDuration > listProducts.get(x).getDurationAuction() && listProducts.get(x).getDurationAuction() != 0){
                minDuration = listProducts.get(x).getDurationAuction();
            }
            avDuration += listProducts.get(x).getDurationAuction();

            if(maxStart < listProducts.get(x).getStartPrice()){
                maxStart = listProducts.get(x).getStartPrice();
            }
            if(minStart > listProducts.get(x).getStartPrice()){
                minStart = listProducts.get(x).getStartPrice();
            }
            avStart += listProducts.get(x).getStartPrice();


            if(highestAuctionPrice < listProducts.get(x).getCurrentPrice()){
                highestAuctionPrice = listProducts.get(x).getCurrentPrice();
            }
            if(highestInstantPrice < listProducts.get(x).getSofortKaufPrice()){
                highestInstantPrice = listProducts.get(x).getSofortKaufPrice();
            }
            if(lowestInstantPrice > listProducts.get(x).getSofortKaufPrice() && listProducts.get(x).getSofortKaufPrice() != 0){
                lowestInstantPrice = listProducts.get(x).getSofortKaufPrice();
            }
            if(listProducts.get(x).getSofortKaufPrice() != 0){
                averrageInstantPrice += listProducts.get(x).getSofortKaufPrice();
                amountInstantPrice++;
            }
        }

        averrageInstantPrice = averrageInstantPrice / amountInstantPrice;
        avDuration = avDuration / total;
        avStart = avStart / total;


        totalUser = listUser.size();
        DecimalFormat df = new DecimalFormat("#.##");
        averrageInstantPrice = (double)Math.round(averrageInstantPrice * 100d) / 100d;
        avStart = (double)Math.round(avStart * 100d) / 100d;
        avDuration = (double)Math.round(avDuration * 100d) / 100d;


        req.setAttribute("totalUser",totalUser);
        req.setAttribute("total", total);
        req.setAttribute("sold", sold);
        req.setAttribute("rest", rest);
        req.setAttribute("highestAuction", highestAuctionPrice);
        req.setAttribute("highestInstant", highestInstantPrice);
        req.setAttribute("lowestInstant", lowestInstantPrice);
        req.setAttribute("averrageInstant", averrageInstantPrice);
        req.setAttribute("minDuration", minDuration);
        req.setAttribute("maxDuration", maxDuration);
        req.setAttribute("avDuration", avDuration);
        req.setAttribute("minStart", minStart);
        req.setAttribute("maxStart", maxStart);
        req.setAttribute("avStart", avStart);




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
