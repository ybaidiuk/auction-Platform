package controller;

import model.entitys.Product;
import model.managers.HibernateUtil;
import org.hibernate.Interceptor;
import org.hibernate.Session;

import java.util.List;

/**
 * Created by y.baidiuk on 16/12/2016.
 */
public class Search {
    public static List<Product> searchProducts(String suchWort) {
        Session hibSesion = HibernateUtil.getSessionFactory().openSession();
        List<Product> listProducts = hibSesion.createQuery("from Product").list();
        hibSesion.close();
        if (suchWort.equals("")) return listProducts;


        for (int i = 0; i < listProducts.size(); i++) {
            Product p = listProducts.get(i);
            if (!p.getTitle().toLowerCase().contains(suchWort.toLowerCase()) &&
                    !p.getDescription().toLowerCase().contains(suchWort.toLowerCase()) &&
                    !p.getCategory().toLowerCase().contains(suchWort.toLowerCase())) {
                listProducts.remove(p);
                i -= 1;
            }
        }

        return listProducts;
    }


}
