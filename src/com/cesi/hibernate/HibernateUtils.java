package com.cesi.hibernate;

import java.util.Properties;

import com.cesi.hibernate.entities.Classes;
import com.cesi.hibernate.entities.Formateurs;
import com.cesi.hibernate.entities.Formations;
import com.cesi.hibernate.entities.Salles;

import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

public class HibernateUtils {
    private static SessionFactory sessionFactory;

    public static SessionFactory getSessionFactory() {
        if (sessionFactory == null) {
            try {
        		System.out.println("Init Connexion - Hibernate");
                Configuration configuration = new Configuration();

                // Hibernate settings equivalent to hibernate.cfg.xml's properties
                Properties settings = new Properties();
                settings.put(Environment.DRIVER, "org.mariadb.jdbc.Driver");
                settings.put(Environment.URL, "jdbc:mysql://bdd.homenco.space:3306/TP_JavaEE");
                settings.put(Environment.USER, "root");
                settings.put(Environment.PASS, "Pilote01");
                settings.put(Environment.DIALECT, "org.hibernate.dialect.MariaDBDialect");
                settings.put(Environment.SHOW_SQL, "true");
                settings.put(Environment.CURRENT_SESSION_CONTEXT_CLASS, "thread");
                settings.put(Environment.HBM2DDL_AUTO, "update");

                configuration.setProperties(settings);
                configuration.addAnnotatedClass(Classes.class);
                configuration.addAnnotatedClass(Salles.class);
                configuration.addAnnotatedClass(Formateurs.class);
                configuration.addAnnotatedClass(Formations.class);

                ServiceRegistry serviceRegistry = new StandardServiceRegistryBuilder()
                        .applySettings(configuration.getProperties()).build();
                System.out.println("Hibernate Java Config serviceRegistry created");
                sessionFactory = configuration.buildSessionFactory(serviceRegistry);
                return sessionFactory;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }

        return sessionFactory;
    }

    /*public static void shutdown() {
        if (registry != null) {
            StandardServiceRegistryBuilder.destroy(registry);
        }
    }*/
}