package controller;

import model.managers.HibernateUtil;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 * Created by y.baidiuk on 16/12/2016.
 */
@WebListener
public class MyAppServletContextListener
        implements ServletContextListener {

    //Run this before web application is started
    @Override
    public void contextInitialized(ServletContextEvent arg0) {
        HibernateUtil.getSessionFactory();
        System.out.println("ServletContextListener started");
    }

    @Override
    public void contextDestroyed(ServletContextEvent arg0) {
        HibernateUtil.shutdown();
        System.out.println("ServletContextListener destroyed");
    }
}
