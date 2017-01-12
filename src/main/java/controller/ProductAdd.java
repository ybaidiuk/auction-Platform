package controller;

import model.entitys.Product;
import model.entitys.User;
import model.managers.HibernateUtil;
import org.hibernate.Session;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.*;
import java.nio.file.Paths;
import java.util.Calendar;

/**
 * Created by y.baidiuk on 01/12/2016.
 */
@WebServlet("/addProduct")
@MultipartConfig
public class ProductAdd extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(true);
        if (session.getAttribute("firstName") != null)
            req.getRequestDispatcher("productAdd.jsp").forward(req, resp);
        else
            resp.sendRedirect("/signin");
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        HttpSession session = req.getSession(false);
        if (session != null && session.getAttribute("firstName") == null)
            resp.sendRedirect("/signin");


        String userEmail = (String) session.getAttribute("userEmail");
        String titel = req.getParameter("titel");
        String category = req.getParameter("category");
        String description = req.getParameter("description");

        double startpreis = Double.parseDouble(req.getParameter("startpreis"));
        double sofortkaufpreis = Double.parseDouble(req.getParameter("sofortkaufpreis"));

        int durationAuction = Integer.parseInt(req.getParameter("durationAuction"));

        Calendar addCal = Calendar.getInstance();
        int addDay = addCal.get(Calendar.DAY_OF_MONTH);


//                Save a Bild
//        https://www.mkyong.com/java/how-to-convert-inputstream-to-file-in-java/
//        http://stackoverflow.com/questions/1154254/help-getting-image-from-servlet-to-jsp-page
        Part filePart = req.getPart("file");
        String fileName = Paths.get(filePart.getSubmittedFileName()).getFileName().toString();
//        System.out.println("File name " + fileName);
//        System.out.println("Context Path " + req.getContextPath());
        InputStream inputStream = filePart.getInputStream();
        OutputStream outputStream = null;
        try {
            // write the inputStream to a FileOutputStream
            outputStream =
                    new FileOutputStream(new File(fileName));
            int read = 0;
            byte[] bytes = new byte[2048];
            while ((read = inputStream.read(bytes)) != -1) {
                outputStream.write(bytes, 0, read);
            }
//            System.out.println("Image Done!");
        } catch (IOException e) {
            e.printStackTrace();
        } finally {
            if (inputStream != null) {
                try {
                    inputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
            if (outputStream != null) {
                try {
                    outputStream.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
//bild save ende

        Session hibSesion = HibernateUtil.getSessionFactory().openSession();
        hibSesion.beginTransaction();


        User user = hibSesion.get(User.class, userEmail);
        Product product = new Product(titel, category, description,
                startpreis, sofortkaufpreis, user, fileName, durationAuction);

        hibSesion.save(product);
        hibSesion.getTransaction().commit();
        hibSesion.close();

        resp.sendRedirect("/index");
    }


}
