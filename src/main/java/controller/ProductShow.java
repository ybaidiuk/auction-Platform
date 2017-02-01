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
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

@WebServlet("/showProduct")
public class ProductShow extends HttpServlet {
    private Product product;
    private boolean bidderBool = false;
    private Session hibSession;

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int searchId = Integer.parseInt(req.getParameter("searchId"));

        System.out.println("mein SO aus der doGet");

        System.out.println("Hibernate...");
        Session hibSesion = HibernateUtil.getSessionFactory().openSession();
        product = hibSesion.get(Product.class, searchId);
        hibSesion.close();

//        String bidPrice = req.getParameter("bidPrice");
//        product.setCurrentPrice(bidPrice);
//        productManager.saveData();
//        System.out.println(bidPrice);
        HttpSession session = req.getSession(true);
        String userEmail = (String) session.getAttribute("userEmail");

        if (product.getHighestBidderEmail() != null) {
            if (userEmail!= null && userEmail.equals(product.getHighestBidderEmail())) {
                bidderBool = true;
            }
        }

        Calendar cal = Calendar.getInstance();
        cal.setTime(product.getAddDay());
        cal.add(5, product.getDurationAuction());
        SimpleDateFormat sf = new SimpleDateFormat("dd.MM.yyyy  - @ - HH:mm");
        //Date date = cal.getTime();
        String auctionDate = sf.format(cal.getTime());

        Calendar calNow = Calendar.getInstance();
        if (calNow.after(cal)){
            product.setSold(true);
            hibSession = HibernateUtil.getSessionFactory().openSession();
            hibSession.beginTransaction();
            hibSession.update(product);
            hibSession.getTransaction().commit();
            hibSession.close();
        }



        req.setAttribute("productId", product.getProductId());
        req.setAttribute("titel", product.getTitle());
        req.setAttribute("startPrice", product.getStartPrice());
        req.setAttribute("sofortKaufPrice", product.getSofortKaufPrice());
        req.setAttribute("category", product.getCategory());
        req.setAttribute("description", product.getDescription());
        req.setAttribute("sold", product.isSold());
        req.setAttribute("currentPrice", product.getCurrentPrice());
        req.setAttribute("imageName", product.getImage());
        req.setAttribute("bidderBool", bidderBool);
        req.setAttribute("endDate", auctionDate);
        req.setAttribute("searchId", product);

        //reset biiderBool
        bidderBool = false;

        req.getRequestDispatcher("productShow.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        String userEmail = (String) session.getAttribute("userEmail");

//      Suchfunktion
        String suchWort = req.getParameter("suchWort");
        if (suchWort != null) {
            resp.sendRedirect("/productsList?suchWort=" + suchWort);
            return;
        }


        User user;
        if (userEmail == null) {
            resp.sendRedirect("/signin");
            return;
        }
        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        user = hibSession.get(User.class, userEmail);
        hibSession.beginTransaction();
//      addToWatchList
        if (req.getParameter("addToWatchlist") != null) {
            user.getMyWatchList().add(product.getProductId());
            hibSession.update(user);
        } else if (req.getParameter("bayNow") != null) {
            product.setSold(true);
            product.setHighestBidderEmail(userEmail);
            //???
            user.getMyWatchList().add(product.getProductId());
            hibSession.update(product);
        } else if (req.getParameter("bidNow") != null) {
            double bidPrice = Double.parseDouble(req.getParameter("bidPrice"));
            if (bidPrice > product.getCurrentPrice() && bidPrice >= product.getStartPrice()) {
                product.setCurrentPrice(bidPrice);
                product.setHighestBidderEmail(userEmail);
                if (bidPrice >= product.getSofortKaufPrice()) {
                    product.setSold(true);
                    product.setCurrentPrice(product.getSofortKaufPrice());
                }

                hibSession.update(product);
            }

        }
        hibSession.getTransaction().commit();
        hibSession.close();
        resp.sendRedirect("/showProduct?searchId=" + product.getProductId());
    }
}
