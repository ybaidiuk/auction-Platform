package test;


import model.entitys.Product;
import model.entitys.User;
import model.managers.HibernateUtil;
import org.hibernate.Session;

/**
 * Created by y.baidiuk on 16/12/2016.
 */
public class Test {
    public static void main(String[] args) {




        Session hibSession = HibernateUtil.getSessionFactory().openSession();
        User user;
        user = hibSession.get(User.class, "y.baidiuk@gmail.com");
        System.out.println(user.getMyWatchList().size());
        hibSession.close();



        //        get
//        Session hibSession = HibernateUtil.getSessionFactory().openSession();
//        User user;
//        user = hibSession.get(User.class, "y.baidiuk@gmail.com");
//        hibSession.close();
//        System.out.println(user);


////        Exemple
//          Save
//        User user = new User("Florian", "berger", "flo@flo.gmailW", "dai", "dai",
//                "Austr", "Wien", "m");
//        Session hibSesion = HibernateUtil.getSessionFactory().openSession();
//        hibSesion.beginTransaction();
//        hibSesion.save(user);
//        hibSesion.getTransaction().commit();
//        hibSesion.close();


//        Update
//        User user = new User("FlorianUP", "berger", "flo@flo.gmail", "dai", "dai",
//                "Austr", "Wien", "m");
//        Session hibSesion = HibernateUtil.getSessionFactory().openSession();
//        hibSesion.beginTransaction();
//        hibSesion.update(user);
//        hibSesion.getTransaction().commit();
//        hibSesion.close();


//        get List from Gibernate
//        Session hibSesion = HibernateUtil.getSessionFactory().openSession();
//        List<Product> listProducts = hibSesion.createQuery("from Product").list();
//        hibSesion.close();
//        for (Product p : listProducts)
//            System.out.println(p);


    }
}