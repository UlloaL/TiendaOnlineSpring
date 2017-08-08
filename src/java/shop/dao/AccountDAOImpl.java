/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import shop.entities.Account;

/**
 *
 * @author Ancelmo Ulloa
 */
@Repository("AccountDAO")
public class AccountDAOImpl implements AccountDAO{

    @Autowired
    private SessionFactory sessionFactory;
    
    @Override
    public void create(Account account) {
        Session session = sessionFactory.openSession();
        Transaction transaction = session.beginTransaction();
        session.save(account);
        transaction.commit();
        session.close();
    }

    @Override
    public Account login(String username, String password) {
        return (Account) sessionFactory.getCurrentSession()
                .createQuery("from Account "
                        + "where username = :username and "
                        + "password = :password")
                .setString("username", username)
                .setString("password", password)
                .uniqueResult();
    }
    
}
