/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package shop.dao;

import java.util.List;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import shop.entities.Category;

/**
 *
 * @author Ancelmo Ulloa
 */
@Repository("categoryDAO")
public class CategoryDAOImpl implements CategoryDAO{
    
    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public List<Category> findAll() {
        return sessionFactory.getCurrentSession()
                .createCriteria(Category.class)
                .list();
    }
    
    @Override
    public Category find(Integer id) {
        return (Category) sessionFactory.getCurrentSession()
                .get(Category.class, id);
    }
 
}
